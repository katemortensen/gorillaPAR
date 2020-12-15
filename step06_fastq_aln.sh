#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=6,walltime=10:00:00,vmem=20gb
#PBS -m abe
#PBS -N fastqc_20201211
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/

module unload perl
module load perl/5.30.1
module load fastqc

#fastqc -o ./quality/ ./alignments/banjo_aln.sorted.bam -t 6
#fastqc -o ./quality/ ./alignments/undi_aln.sorted.bam -t 6

#fastqc -o ./quality/ ./alignments/efata_aln.sorted.bam -t 6
#fastqc -o ./quality/ ./alignments/mimi_aln.sorted.bam -t 6

fastqc -o ./quality/ ./alignments/mutasi_aln.sorted.bam -t 6
fastqc -o ./quality/ ./alignments/mawenzi_aln.sorted.bam -t 6





