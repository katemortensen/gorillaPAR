#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=00:59:00,vmem=100gb
#PBS -m abe
#PBS -N seqdict_debug_20201120
#PBS -j oe 
#PBS -q debug

#####  setup  #####

cd /N/project/gorillaPAR/sequences

module load java/1.8.0_131

#/N/project/gorillaPAR/gatk-4.1.9.0/gatk CreateSequenceDictionary -R kamilah_chromx.fasta


