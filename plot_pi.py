#!/usr/bin/env python3
import argparse
import pandas as pd
import matplotlib.pyplot as plt
from pylab import *

parser = argparse.ArgumentParser(description='Create plots from vctools output files for window pi (no steps)')
parser.add_argument('-BUMEZS', help = "pick which gorillas to plot (B=Banjo, U=Undi, E=Efata, Z=Mawenzi, S=Mutasi)", required = True)
parser.add_argument('-w', help = "window size (Enter 1M or 500k as a string)", required = True)
parser.add_argument('-l', help = "vertical lines to mark PAR I and II in humans (Enter yes or no)", required = True)
args = parser.parse_args()


if 'B' in args.BUMEZS :
    if args.w == '1M':
        dfB = pd.read_table('banjo_chromx_v3_1M.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfB[2], dfB[4], label = "Banjo", color = '#1FA4E4')
        plt.axhline(y=dfB[4].mean(), color='#808080', linestyle='--')
    if args.w == '500k':
        dfB = pd.read_table('banjo_chromx_v3_500k.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfB[2], dfB[4], label = "Banjo", color = '#1FA4E4')
    

if 'U' in args.BUMEZS :
    if args.w == '1M':
        dfU = pd.read_table('undi_chromx_v3_1M.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfU[2], dfU[4], label = "Undi", color = '#FA3EAB')
        plt.axhline(y=dfU[4].mean(), color='#808080', linestyle='--')
    if args.w == '500k':
        dfU= pd.read_table('undi_chromx_v3_500k.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfU[2], dfU[4], label = "Undi", color = '#FA3EAB')


if 'M' in args.BUMEZS :
    if args.w == '1M':
        dfM = pd.read_table('mimi_chromx_v3_1M.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfM[2], dfM[4], label = "Mimi", color = '#EEB029')
        plt.axhline(y=dfM[4].mean(), color='#808080', linestyle='--')
    if args.w == '500k':
        dfM = pd.read_table('mimi_chromx_v3_500k.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfM[2], dfM[4], label = "Mimi", color = '#EEB029')



if 'E' in args.BUMEZS :
    if args.w == '1M':
        dfE = pd.read_table('efata_chromx_v3_1M.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfE[2], dfE[4], label = "Efata", color = '#33D38C')
        plt.axhline(y=dfE[4].mean(), color='#808080', linestyle='--')
    if args.w == '500k':
        dfE = pd.read_table('efata_chromx_v3_500k.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfE[2], dfE[4], label = "Efata", color = '#33D38C')


if 'S' in args.BUMEZS :
    if args.w == '1M':
        dfS = pd.read_table('mutasi_chromx_v3_1M.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfS[2], dfS[4], label = "Mutasi", color = '#9900CC')
        plt.axhline(y=dfS[4].mean(), color='#808080', linestyle='--')
    if args.w == '500k':
        dfS= pd.read_table('mutasi_chromx_v3_500k.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfS[2], dfS[4], label = "Mutasi", color = '#9900CC')


if 'Z' in args.BUMEZS :
    if args.w == '1M':
        dfZ = pd.read_table('mawenzi_chromx_v3_1M.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfZ[2], dfZ[4], label = "Mawenzi", color = '#CC0000')
        plt.axhline(y=dfZ[4].mean(), color='#808080', linestyle='--')
    if args.w == '500k':
        dfZ= pd.read_table('mawenzi_chromx_v3_500k.windowed.pi',  skiprows=1, header=None, usecols=[2,4],  sep='\t')
        plt.plot(dfZ[2], dfZ[4], label = "Mawenzi", color = '#CC0000')


#Giving Label to x-axis
plt.xlabel("X Chromosome Location")


if args.w == '1M' : 
    plt.title("Pi - 1M bp Window")
    plt.ylabel("Pi")
    
if args.w == '500k' : 
    plt.title("Pi - 500k bp Window")
    plt.ylabel("Pi")

#To Show LEGEND
plt.legend(loc="upper right")

if args.l == 'yes' :
    plt.axvline(x=10001, color='#808080', linestyle='--') # PARI start
    plt.axvline(x=2781479, color='#808080', linestyle='--') # PARI end 
    plt.axvline(x=149490469-(156030895-155701383), color='#808080', linestyle='--') #PARII start
#plt.savefig('pi_1M-BUME.png')  

#DISPLAY the plot
plt.show()
