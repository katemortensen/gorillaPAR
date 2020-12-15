#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=6,walltime=90:00:00,vmem=20gb
#PBS -m abe
#PBS -N fastqc_20201203
#PBS -j oe 


#####  setup  #####

cd /N/project/gorillaPAR/

module unload perl
module load perl/5.30.1
module load fastqc


#fastqc -o ./quality/ -f fastq ./sequences/undi_1.fastq -t 6
#fastqc -o ./quality/ -f fastq ./sequences/undi_2.fastq -t 6

fastqc -o ./quality/ -f fastq ./sequences/banjo_1.fastq -t 6
fastqc -o ./quality/ -f fastq ./sequences/banjo_2.fastq -t 6

fastqc -o ./quality/ ./sequences/efata_1.fastq -t 6
fastqc -o ./quality/ ./sequences/efata_2.fastq -t 6


fastqc -o ./quality/ ./sequences/mimi_1.fastq -t 6
fastqc -o ./quality/ ./sequences/mimi_2.fastq -t 6


fastqc -o ./quality/ ./sequences/mutasi_1.fastq -t 6
fastqc -o ./quality/ ./sequences/mutasi_2.fastq -t 6


fastqc -o ./quality/ ./sequences/mawenzi_1.fastq -t 6
fastqc -o ./quality/ ./sequences/mawenzi_2.fastq -t 6





