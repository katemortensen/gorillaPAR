#!/usr/bin/env python3
import pandas as pd
import matplotlib.pyplot as plt


dfB = pd.read_table('banjo_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
dfU = pd.read_table('mimi_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
mf_ratio = dfB[2]/dfU[2]
plt.plot(dfB[1], mf_ratio, label = "Banjo/Mimi", color = 'black')

plt.axhline(y=mf_ratio.mean(), color='#808080', linestyle='--')
plt.xlabel("X Chromosome Location")
plt.title("Read Depth Ratio - 1M bp Window")
plt.ylabel("Read Depth (Male/Female)")
plt.legend(loc="upper right")

plt.axvline(x=10001, color='#808080', linestyle='--') # PARI start
plt.axvline(x=2781479, color='#808080', linestyle='--') # PARI end 
plt.axvline(x=149490469-(156030895-155701383), color='#808080', linestyle='--') #PARII start

#plt.savefig('depth_1M-BUME.png')  

#DISPLAY the plot
plt.show()