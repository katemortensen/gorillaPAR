#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=00:59:00,vmem=100gb
#PBS -m abe
#PBS -N index_debug_20201112
#PBS -j oe 
#PBS -q debug

#####  setup  #####

cd /N/project/gorillaPAR/sequences


index Kamilah
/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 index kamilah.fna


# Indexing for blast (below)

#cd /N/project/gorillaPAR/human_db

# index human 
#/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 index human.fna

# index xchrom
#/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 index xchrom.fasta




