"""
Python script used for generating FF spectrometer bdsim simulations. Uses a user
defined bdsim component that models the FlashForward spectrometer. Produces two
simulations; one for a drive beam and one for a witness beam. Then submits
the jobs to the UCL HEP cluster. Finally, processes the output into .txt files
for easy analysis.

Created by James Chappell

"""

import numpy as np
import argparse
import sys
import os
import string

spectrometergmad = '''
! This file describes a simple model for the FlashForward spectrometer beamline

option,physicsList="";
option,ngenerate=100000;
!include options.gmad;

beamEnergydef
gamma=beamEnergy/(0.511*MeV);
print, gamma;
beam, particle="e-",
      energy=beamEnergy,
      distrType="gausstwiss",
      emitxdef,
      emitydef,
      betxdef,
      betydef,
      alfxdef,
      alfydef,
      sigmaEdef,
      sigmaT=100e-15;

! Constants
AP10MM=5*mm;
quad_length=0.116*m;
AP40MM=20.25*mm;


!================================================ Drift lengths ================================================================

Dinit: drift, l=0.001*mm, aper=AP10MM;
D0031: drift, l=0.031*m, aper=AP40MM;
D0096: drift, l=0.09639*m, aper=AP10MM;
D0150: drift, l=0.15*m, aper=AP10MM;
D0131: drift, l=0.1319585*m, aper=AP10MM;
D0137: drift, l=0.137070*m, aper=AP40MM;
D0139: drift, l=0.13945*m, aper=AP40MM;
D0403: drift, l=0.40361*m, aper=AP10MM;
D0423: drift, l=0.423500*m, aper=AP40MM;
D0550: drift, l=0.519000*m, aper=AP40MM;
D0250b: drift, l=0.45*m, aper=AP40MM;


!================================================ Markers ======================================================================

init: marker;
BPM1FLFDIAG: marker;
VAC2FLFDIAG: marker;
BPM3FLFDIAG: marker;
SCR5FLFDIAG: marker; ! placeholder for screen


!================================================ Quadrupoles ==================================================================

Q1.1FLFDIAG: quadrupole, l=quad_length, q1.1def, aper1=AP10MM;
Q1.2FLFDIAG: quadrupole, l=quad_length, q1.2def, aper1=AP10MM;
Q2.1FLFDIAG: quadrupole, l=quad_length, q2.1def, aper1=AP10MM;
Q2.2FLFDIAG: quadrupole, l=quad_length, q2.2def, aper1=AP10MM;
Q2.3FLFDIAG: quadrupole, l=quad_length, q2.3def, aper1=AP10MM;


!================================================ Dipoles ======================================================================

!D3FLFDIAG: rbend, l=1*m, B=1.0*T, e1=0, e2=0, aper1=AP40MM, tilt=pi/2;
D3FLFDIAG: usercomponent, userTypeName="udipole", Bdef;


!================================================ Beamline =====================================================================

FLFDIAG1: line=(Dinit, init, D0403, BPM1FLFDIAG, D0096, Q1.1FLFDIAG, D0150, Q1.2FLFDIAG, D0150, Q2.1FLFDIAG,
                D0150, Q2.2FLFDIAG, D0131, D0131, Q2.3FLFDIAG, D0139, VAC2FLFDIAG, D0137, BPM3FLFDIAG, D0423, D3FLFDIAG,
                D0550, SCR5FLFDIAG, D0031, D0250b);
! was an extra Q1.2FLFDIAG and D0150 in elegant beamline
use, period=FLFDIAG1;

sample, range = init;
sample, range = BPM1FLFDIAG;
sample, range = VAC2FLFDIAG;
sample, range = BPM3FLFDIAG;
sample, range = SCR5FLFDIAG;

'''

subscript = '''
#!/bin/bash

#PBS -l walltime=02:00:00
#PBS -l mem=1G
#PBS -l nodes=1
#PBS -q mediumc7
#PBS -N BDSIMffdrivewitness
#PBS -m be
#PBS -M james.chappell.17@ucl.ac.uk
work_dir
#PBS -e ./logs/
#PBS -o ./logs/

source /unix/pbt/software/scripts/bdsim_setup_ff.sh
change_dir

sub_line

'''


def make_simulation(resultsdir, energy, emitx, emity, betx, bety, alfx, alfy,
                    sigmaE, sigmaT, q1, q2, q3, q4, q5, dipolefield, type):

    sg = os.path.join(resultsdir, 'spectrometer.gmad')
    fh = open(sg, "wb")

    energy_string = 'beamEnergy=%s*GeV;' % float('%.2g' % energy)
    specgmad1 = string.replace(spectrometergmad, 'beamEnergydef', energy_string)

    emitx_string = 'emitx=%se-6/gamma' % float('%.2g' % emitx)
    specgmad2 = string.replace(specgmad1, 'emitxdef', emitx_string)

    emity_string = 'emity=%se-6/gamma' % float('%.2g' % emity)
    specgmad3 = string.replace(specgmad2, 'emitydef', emity_string)

    betx_string = 'betx=%s' % float('%.2g' % betx)
    specgmad4 = string.replace(specgmad3, 'betxdef', betx_string)

    bety_string = 'bety=%s' % float('%.2g' % bety)
    specgmad5 = string.replace(specgmad4, 'betydef', bety_string)

    alfx_string = 'alfx=%s' % float('%.2g' % alfx)
    specgmad6 = string.replace(specgmad5, 'alfxdef', alfx_string)

    alfy_string = 'alfy=%s' % float('%.2g' % alfy)
    specgmad7 = string.replace(specgmad6, 'alfydef', alfy_string)

    sigE_string = 'sigmaE=%s' % float('%.2g' % sigmaE)
    specgmad8 = string.replace(specgmad7, 'sigmaEdef', sigE_string)

    sigT_string = 'sigmaT=%s' % float('%.2g' % sigmaT)
    specgmad9 = string.replace(specgmad8, 'sigmaTdef', sigT_string)

    q1_string = 'k1=%s' % float('%.2g' % q1)
    specgmad10 = string.replace(specgmad9, 'q1.1def', q1_string)

    q2_string = 'k1=%s' % float('%.2g' % q2)
    specgmad11 = string.replace(specgmad10, 'q1.2def', q2_string)

    q3_string = 'k1=%s' % float('%.2g' % q3)
    specgmad12 = string.replace(specgmad11, 'q2.1def', q3_string)

    q4_string = 'k1=%s' % float('%.2g' % q4)
    specgmad13 = string.replace(specgmad12, 'q2.2def', q4_string)

    q5_string = 'k1=%s' % float('%.2g' % q5)
    specgmad14 = string.replace(specgmad13, 'q2.3def', q5_string)

    dipolefield_string = 'B=%s' % float('%.2g' % dipolefield)
    specgmad15 = string.replace(specgmad14, 'Bdef', dipolefield_string)

    fh.write(specgmad15)
    fh.close()

    ss = os.path.join(resultsdir, 'sub_script.bash')
    fs = open(ss, "wb")

    work_dir_string = '#PBS -wd ' + resultsdir
    subscript1 = string.replace(subscript, 'work_dir', work_dir_string)

    change_dir_string = 'cd ' + resultsdir
    subscript2 = string.replace(subscript1, 'change_dir', change_dir_string)

    sub_line_str = "custombdsim --file=spectrometer.gmad --outfile=" + str(
        type) + " --batch"
    subscript3 = string.replace(subscript2, 'sub_line', sub_line_str)

    fs.write(subscript3)
    fs.close()


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="""
        This script generates two BDSIM simulations of the FlashForward 
        diagnostics line, one for a drive beam and one for a witness beam.""",
    formatter_class=argparse.RawTextHelpFormatter)

    parser.add_argument('--drive', dest='drive', nargs='+', default=[1.0, 2, 2,
                                                                     0.01,
                                                                     0.01, 0, 0,
                                                                     0.001,
                                                                     100],
                        help='''
        This is the definition of the drive beam parameters. It takes nine 
        arguments that must be provided as a list. The arguments are:
        
        1. Energy: mean energy of the beam [GeV].
        2. epsilon_x: horizontal normalised emittance [um].
        3. epsilon_y: vertical normalised emittance [um].
        4. beta_x: horizontal beta function [m].
        5. beta_y: vertical beta function [m].
        6. alpha_x: horizontal alpha function.
        7. alpha_y: vertical alpha function.
        8. sigma_E: relative energy spread, sigma_E/E.
        9. sigma_T: sigma of the temporal distribution [fs].
        
        e.g. default: [1.0, 2, 2, 0.01, 0.01, 0, 0, 0.001, 100]
        ''')

    parser.add_argument('--witness', dest='witness', nargs='+', default=[1.5, 2,
                                                                         2, 0.01,
                                                          0.01, 0, 0, 0.1,
                                                          100],
                        help='''
        This is the definition of the witness beam parameters. It takes nine 
        arguments that must be provided as a list. The arguments are:

        1. Energy: mean energy of the beam [GeV].
        2. epsilon_x: horizontal normalised emittance [um].
        3. epsilon_y: vertical normalised emittance [um].
        4. beta_x: horizontal beta function [m].
        5. beta_y: vertical beta function [m].
        6. alpha_x: horizontal alpha function.
        7. alpha_y: vertical alpha function.
        8. sigma_E: relative energy spread, sigma_E/E.
        9. sigma_T: sigma of the temporal distribution [fs].

        e.g. default: [1.5, 2, 2, 0.01, 0.01, 0, 0, 0.1, 100]
            ''')

    parser.add_argument('--magnets', dest='magnets', nargs='+', default=[7.3,
                                                                         7.3,
                                                                         -12,
                                                              8, -12, 0.8],
                        help='''
        This is the definition of the quadrupole and dipole magnets. It 
        takes six arguments that must be provided as a list. The quadrupole 
        values correspond to the normalised quadrupole strength and can vary 
        between +/- 12. The dipole value corresponds to the strength of the 
        dipole magnetic field in Tesla. The arguments are:

        1. First quadrupole, Q1.1
        2. Second quadrupole, Q1.2
        3. Third quadrupole, Q2.1
        4. Fourth quadrupole, Q2.2
        5. Fifth quadrupole, Q2.3
        6. Dipole field strength [T]

        e.g. default: [7.3, 7.3, -12, 8, -12, 0.8]
                ''')

    arguments = parser.parse_args()

    drive_params = arguments.drive

    witness_params = arguments.witness

    magnetparams = arguments.magnets

    cwd = os.getcwd()

    types = ['drive', 'witness']

    for beamtype in types:

        os.chdir(cwd)

        if beamtype == 'drive':

            beamparams = drive_params

        else:

            beamparams = witness_params

        print "Making %s beam directory and simulation." % beamtype

        res_dir = beamtype

        if os.path.isdir(res_dir) is False:
            os.mkdir(res_dir)
        else:
            print "Directory %s already exists. Stopping." % res_dir
            break

        make_simulation(cwd + '/' + res_dir, beamparams[0], beamparams[1],
                        beamparams[2], beamparams[3], beamparams[4],
                        beamparams[5], beamparams[6], beamparams[7],
                        beamparams[8], magnetparams[0], magnetparams[1],
                        magnetparams[2], magnetparams[3], magnetparams[4],
                        magnetparams[5], beamtype)
        os.chdir(cwd + '/' + res_dir)
        os.mkdir('logs')
        run_command = "qsub sub_script.bash"
        print run_command
        #os.system(run_command)



