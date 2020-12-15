#!/usr/bin/env python3
import argparse
import pandas as pd
import matplotlib.pyplot as plt

parser = argparse.ArgumentParser(description='Create plots from calcDepthWin.py outputs')
parser.add_argument('-BUMEZS', help = "pick which gorillas to plot (B=Banjo, U=Undi, E=Efata, Z=Mawenzi, S=Mutasi)", required = True)
parser.add_argument('-r', help = "ratio or raw depth (Enter ratio or raw)", required = True)
parser.add_argument('-w', help = "window size (Enter 1M or 500k as a string)", required = True)
parser.add_argument('-l', help = "vertical lines to mark PAR I and II in humans (Enter yes or no)", required = True)

args = parser.parse_args()

if 'B' in args.BUMEZS :
    if args.r == 'raw' :
        if args.w == '1M':
            dfB = pd.read_table('banjo_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfB[1], dfB[2], label = "Banjo", color = '#1FA4E4')
            plt.axhline(y=dfB[2].mean(), color='#808080', linestyle='--')

    if args.r == 'raw' :
        if args.w == '500k':
            dfB = pd.read_table('banjo_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfB[1], dfB[2], label = "Banjo", color = '#1FA4E4')
            plt.axhline(y=dfB[2].mean(), color='#808080', linestyle='--')

    if args.r == 'ratio' :
        if args.w == '1M':
            dfB = pd.read_table('banjo_chromx_depth_1M.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfB[1], dfB[2], label = "Banjo", color = '#1FA4E4')

    if args.r == 'ratio' :
        if args.w == '500k':
            dfB = pd.read_table('banjo_chromx_depth_500k.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfB[1], dfB[2], label = "Banjo", color = '#1FA4E4')


if 'U' in args.BUMEZS :
    if args.r == 'raw' :
        if args.w == '1M':
            dfU = pd.read_table('undi_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfU[1], dfU[2], label = "Undi", color = '#FA3EAB')
            plt.axhline(y=dfU[2].mean(), color='#808080', linestyle='--')
    if args.r == 'raw' :
        if args.w == '500k':
            dfU= pd.read_table('undi_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfU[1], dfU[2], label = "Undi", color = '#FA3EAB')
            plt.axhline(y=dfU[2].mean(), color='#808080', linestyle='--')
    if args.r == 'ratio' :
        if args.w == '1M':
            dfU = pd.read_table('undi_chromx_depth_1M.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfU[1], dfU[2], label = "Undi", color = '#FA3EAB')

    if args.r == 'ratio' :
        if args.w == '500k':
            dfU = pd.read_table('undi_chromx_depth_500k.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfU[1], dfU[2], label = "Undi", color = '#FA3EAB')


if 'M' in args.BUMEZS :
    if args.r == 'raw' :
        if args.w == '1M':
            dfM = pd.read_table('mimi_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfM[1], dfM[2], label = "Mimi", color = '#EEB029')
            plt.axhline(y=dfM[2].mean(), color='#808080', linestyle='--')

    if args.r == 'raw' :
        if args.w == '500k':
            dfM = pd.read_table('mimi_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfM[1], dfM[2], label = "Mimi", color = '#EEB029')
            plt.axhline(y=dfM[2].mean(), color='#808080', linestyle='--')
    if args.r == 'ratio' :
        if args.w == '1M':
            dfM = pd.read_table('mimi_chromx_depth_1M.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfM[1], dfM[2], label = "Mimi", color = '#EEB029')
    if args.r == 'ratio' :
        if args.w == '500k':
            dfM = pd.read_table('mimi_chromx_depth_500k.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfM[1], dfM[2], label = "Mimi", color = '#EEB029')


if 'E' in args.BUMEZS :
    if args.r == 'raw' :
        if args.w == '1M':
            dfE = pd.read_table('efata_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfE[1], dfE[2], label = "Efata", color = '#33D38C')
            plt.axhline(y=dfE[2].mean(), color='#808080', linestyle='--')
    if args.r == 'raw' :
        if args.w == '500k':
            dfE = pd.read_table('efata_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfE[1], dfE[2], label = "Efata", color = '#33D38C')
            plt.axhline(y=dfE[2].mean(), color='#808080', linestyle='--')
    if args.r == 'ratio' :
        if args.w == '1M':
            dfE = pd.read_table('efata_chromx_depth_1M.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfE[1], dfE[2], label = "Efata", color = '#33D38C')

    if args.r == 'ratio' :
        if args.w == '500k':
            dfE = pd.read_table('efata_chromx_depth_500k.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfE[1], dfE[2], label = "Efata", color = '#33D38C')


if 'S' in args.BUMEZS :
    if args.r == 'raw' :
        if args.w == '1M':
            dfS = pd.read_table('mutasi_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfS[1], dfS[2], label = "Mutasi", color = '#9900CC')
            plt.axhline(y=dfS[2].mean(), color='#808080', linestyle='--')
    if args.r == 'raw' :
        if args.w == '500k':
            dfS= pd.read_table('mutasi_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfS[1], dfS[2], label = "Mutasi", color = '#9900CC')
            plt.axhline(y=dfS[2].mean(), color='#808080', linestyle='--')
    if args.r == 'ratio' :
        if args.w == '1M':
            dfS = pd.read_table('mutasi_chromx_depth_1M.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfS[1], dfS[2], label = "Mutasi", color = '#9900CC')

    if args.r == 'ratio' :
        if args.w == '500k':
            dfS = pd.read_table('mutasi_chromx_depth_500k.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfS[1], dfS[2], label = "Mutasi", color = '#9900CC')


if 'Z' in args.BUMEZS :
    if args.r == 'raw' :
        if args.w == '1M':
            dfZ = pd.read_table('mawenzi_chromx_depth_1M.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfZ[1], dfZ[2], label = "Mawenzi", color = '#CC0000')
            plt.axhline(y=dfZ[2].mean(), color='#808080', linestyle='--')
    if args.r == 'raw' :
        if args.w == '500k':
            dfZ= pd.read_table('mawenzi_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfZ[1], dfZ[2], label = "Mawenzi", color = '#CC0000')
            plt.axhline(y=dfZ[2].mean(), color='#808080', linestyle='--')
    if args.r == 'ratio' :
        if args.w == '1M':
            dfZ = pd.read_table('mawenzi_chromx_depth_1M.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfZ[1], dfZ[2], label = "Mawenzi", color = '#CC0000')

    if args.r == 'ratio' :
        if args.w == '500k':
            dfZ = pd.read_table('mawenzi_chromx_depth_500k.ratio.out', header=None, usecols=[1,2],  sep='\t')
            plt.plot(dfZ[1], dfZ[2], label = "Mawenzi", color = '#CC0000')


#Giving Label to x-axis
plt.xlabel("X Chromosome Location")


if args.w == '1M' : 
    if args.r == 'raw' :
        plt.title("Read Depth - 1M bp Window")
        plt.ylabel("Read Depth")
    if args.r == 'ratio' :
        plt.title("Read Depth Normalized - 1M bp Window")
        plt.ylabel("Normalized Read Depth")
        plt.axhline(y=1, color='#808080', linestyle='--')

if args.w == '500k' : 
    if args.r == 'raw' :
        plt.title("Read Depth - 500k bp Window")
        plt.ylabel("Read Depth")
    if args.r == 'ratio' :
        plt.title("Read Depth Normalized - 500k bp Window")
        plt.ylabel("Normalized Read Depth")
        plt.axhline(y=1, color='#808080', linestyle='--')
#To Show LEGEND
plt.legend(loc="upper right")

if args.l == 'yes' :
    plt.axvline(x=10001, color='#808080', linestyle='--') # PARI start
    plt.axvline(x=2781479, color='#808080', linestyle='--') # PARI end 
    plt.axvline(x=149490469-(156030895-155701383), color='#808080', linestyle='--') #PARII start

#plt.savefig('depth_1M-BUME.png')  

#DISPLAY the plot
plt.show()