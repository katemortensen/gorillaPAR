#!/usr/bin/env python3
import argparse
import pandas as pd
import matplotlib.pyplot as p

parser = argparse.ArgumentParser(description='Create a specified sliding window average of read depth from a samtools depth .tsv file.')
parser.add_argument('-f', help = "path to file", required = True)
parser.add_argument('-o', help = "output path and specified file name (.out extension is added to specified name)", required = True)
parser.add_argument('-w', help = "window size", type = int, required = True)
args = parser.parse_args()

file = args.o + '.out'
end = 0
with open(file, "w") as store_file:
    for chunk in pd.read_table(args.f, chunksize=args.w, header = None) :
        end += args.w 
        start = end - args.w + 1
        mean_depth = chunk[2].mean()
        entry = "{}\t{}\t{:.2f}".format(start, end, mean_depth) + "\n"
        store_file.write(entry) 


df = pd.read_table(file, header=None, usecols=[0,1,2],  sep='\t')

mean_read_depth = df[2].mean()

ratio_file = args.o + '.ratio.out'
with open(ratio_file, "w") as store_file:
    for row in range(len(df)): 
        start = df[0][row]
        end = df[1][row]
        depth_ratio = df[2][row]/df[2].mean()
        entry = "{}\t{}\t{:.2f}".format(start, end, depth_ratio) + "\n"
        store_file.write(entry) 


        



