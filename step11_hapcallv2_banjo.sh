#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=04:00:00,vmem=60gb
#PBS -m abe
#PBS -N hapcallv2_20201212
#PBS -j oe 

#####  setup  #####

source activate gorillaPAR

cd /N/project/gorillaPAR/


 freebayes -f ./sequences/kamilah_chromx.fasta ./alignments/banjo_chromx.bam > ./variants/banjo_chromx_v2.vcf

