#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Aug  6 09:41:47 2018

@author: jchappel
"""

import pybdsim as pb
import numpy as np
import argparse

#%%

def get_sampler_data(d, sampler):
    
    print('Accessing sampler: {}'.format(sampler))
    
    #d = pb.Data.Load(file)
    
    sampler_data = pb.Data.PhaseSpaceData(d, sampler)
    
    x = sampler_data.data['x']
    y = sampler_data.data['y']
    xp = sampler_data.data['xp']
    yp = sampler_data.data['yp']
    E = sampler_data.data['energy']
    
    n = len(x)
    
    print ('Number of entries: {}'.format(n))
    
    sampler_data_list = []
    
    for i in range(0, n):
        
        line = [x[i], y[i], xp[i], yp[i], E[i]]
        
        sampler_data_list.append(line)
        
        if i % 10000 == 0.0:
            
            print('Completed {} events out of {}...'.format(i, n))
        
    final = np.asarray(sampler_data_list)
    
    print('Done.')
    
    filename = sampler + '.txt'
    
    np.savetxt(filename, final, fmt='%.4e')
    
    print('Saved as {}.'.format(filename))
    
#%%
    
if __name__ == "__main__":
    
    parser = argparse.ArgumentParser(description="""
                                     This script analyses BDSIM output files and converts them into text files that can be easily used in analysis.""", formatter_class=argparse.RawTextHelpFormatter)
    
    parser.add_argument('--file', dest='file', default=None, help='''
                        This is the input file that is to be analysed.
                        
                        E.g. --file "output.root"''')
    
    arguments = parser.parse_args()
    
    file = arguments.file
    
    sampler_names = ['init', 'BPM1FLFDIAG', 'VAC2FLFDIAG', 'BPM3FLFDIAG', 'SCR5FLFDIAG', 'D3FLFDIAG_screen', 'D3FLFDIAG_screen_btm']
    
    print('Loading data file: {}'.format(file))
    
    d = pb.Data.Load(file)
    
    for sampler in sampler_names:
        
        get_sampler_data(d, sampler)
        
    print('Finished.')
