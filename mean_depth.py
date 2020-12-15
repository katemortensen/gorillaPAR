#!/usr/bin/env python3
import pandas as pd


df = pd.read_table('mimi_chromx_depth_500k.out', header=None, usecols=[1,2],  sep='\t')


# start/stop for calculating the PAR region

par_counter = 0
par_start = 0
par_stop = int(3000000/df[1][0]) 
par_pos = []
par_pi = []

for i in range(par_start,par_stop) :
    par_counter += 1
    par_pos.append(df[1][i])
    par_pi.append(df[2][i])
assert par_pos[-1] == df[1][par_stop-1]

print("PARI : mean depth = ", sum(par_pi)/par_counter)


# start/stop for calculating the rest of Chrx excluding the PAR

nonpar_counter = 0
nonpar_start = int(3000000/df[1][0]) + 1
nonpar_stop = len(df)
nonpar_pos = []
nonpar_pi = []

for i in range(nonpar_start,nonpar_stop) :
    nonpar_counter += 1
    nonpar_pos.append(df[1][i])
    nonpar_pi.append(df[2][i])
assert nonpar_pos[-1] == df[1][len(df)-1]

print("ChrX (-PARI) : mean depth = ", sum(nonpar_pi)/nonpar_counter)
