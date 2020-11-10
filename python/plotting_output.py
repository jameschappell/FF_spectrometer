#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 19 15:31:27 2018

@author: jamiechappell
"""

import numpy as np
import matplotlib.pyplot as plt
import matplotlib

#%%

drive = np.loadtxt('/Users/jamiechappell/Documents/PhD/FlashForward/FF_spec/bdsim/develop/sims/0.5T_0.8downscaledquads/drive/D3FLFDIAG_screen.txt')
witness = np.loadtxt('/Users/jamiechappell/Documents/PhD/FlashForward/FF_spec/bdsim/develop/sims/0.5T_0.8downscaledquads/witness/D3FLFDIAG_screen.txt')

xd = []
xw = []
yd = []
yw = []
zd = []
zw = []

for i in range(0, len(drive)):
    
    line = drive[i]
    
    if line[5] == 0.0:
        continue
    
    xd.append(line[0])
    yd.append(line[1])
    zd.append(line[5])
    
for i in range(0, len(witness)):
    
    line = witness[i]
    
    if line[5] == 0.0:
        continue
    
    xw.append(line[0])
    yw.append(line[1])
    zw.append(line[5])
    
xb = xd + xw
yb = yd + yw
zb = zd + zw
    
#%%
    
font = {'size'   : 15}

matplotlib.rc('font', **font)
    
plt.scatter(xw, zw, marker='.')
plt.show()
print(len(xw))
print(len(xd))

#%%


xbins = np.linspace(-0.01, 0.01, 200)
zbins = np.linspace(-0.1, 0.1, 2000)
#zbins1 = np.linspace(-0.55, 0.55, 1100)
cmap = plt.cm.get_cmap('jet')
cmap.set_under('white')

cmap2 = plt.cm.get_cmap('viridis')
cmap2.set_under('white')

vmax = 300

plt.figure(figsize=(15,7))
ax1 = plt.subplot(131)
plt.hist2d(xd, zd, bins=[xbins, zbins], cmap=cmap, vmin=0.1, vmax=vmax)
#plt.colorbar()
#plt.xlabel(r'$x$ [m]')
plt.ylabel('Position along screen [m]')
plt.title('Drive beam')

#plt.savefig('/Users/jamiechappell/Documents/PhD/FF_spec/bdsim/develop/diagscreentesting.png')

ax2 = plt.subplot(132, sharey=ax1)
plt.hist2d(xw, zw, bins=[xbins, zbins], cmap=cmap, vmin=0.1, vmax=vmax)
#plt.colorbar()
plt.xlabel(r'$x$ [m]')
plt.setp(ax2.get_yticklabels(), visible=False)
#plt.ylabel('Position along screen [m]')
plt.title('Witness beam')

#plt.savefig('/Users/jamiechappell/Documents/PhD/FF_spec/bdsim/develop/flatscreentesting.png')


ax3 = plt.subplot(133, sharey=ax1)
plt.hist2d(xb, zb, bins=[xbins, zbins], cmap=cmap, vmin=0.1, vmax=vmax)
plt.colorbar()
plt.setp(ax3.get_yticklabels(), visible=False)
#plt.xlabel(r'$x$ [m]')
#plt.ylabel('Position along screen [m]')
plt.title('Both beams')
plt.tight_layout()