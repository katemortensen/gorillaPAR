#!/usr/bin/env python3
import pandas as pd
import matplotlib.pyplot as p

df_banjo = pd.read_table('banjo_chromx_depth.tsv', skiprows=1, header=None)
df_undi = pd.read_table('undi_chromx_depth.tsv', skiprows=1, header=None)

#Plotting the Line on Graph
x1 = df_banjo[1]
y1 = df_banjo[2]
x2 = df_undi[1]
y2 = df_undi[2]

#Plotting the Line 2 on Graph
p.plot(x2, y2, label = "Undi (Female) Read Depth")

#Plotting the Line 1 on Graph
p.plot(x1, y1, label = "Banjo (Male) Read Depth")


#Giving Label to x-axis
p.xlabel("location")

#Giving Label to y-axis
p.ylabel("pi")

#Giving Title To Plotted Graph
p.title("READ DEPTH")

#To Show LEGEND
p.legend()

#DISPLAY the plot
p.show()
