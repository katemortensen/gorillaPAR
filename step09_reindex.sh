#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=00:59:00,vmem=100gb
#PBS -m abe
#PBS -N reindex_debug_20201125
#PBS -j oe 
#PBS -q debug

#####  setup  #####

module load samtools 

cd /N/project/gorillaPAR/sequences

#samtools faidx kamilah_chromx.fasta
cd /N/project/gorillaPAR/alignments

# Mimi

#samtools index mimi_chromx.bam -@4
#samtools index mimi_chromx.REF_CM017870.1.bam -@4

# Mutasi

samtools index mutasi_chromx.bam -@4
samtools index mutasi_chromx.REF_CM017870.1.bam -@4

# Mawenzi

samtools index mawenzi_chromx.bam -@4
samtools index mawenzi_chromx.REF_CM017870.1.bam -@4

# Efata

#samtools index efata_chromx.bam -@4
#samtools index efata_chromx.REF_CM017870.1.bam -@4
#samtools index efata_chromx_mod.bam -@4

# Banjo

#samtools index banjo_chromx.bam -@4
#samtools index banjo_chromx.REF_CM017870.1.bam -@4
#samtools index banjo_chromx_mod.bam -@4

# Undi

#samtools index undi_chromx.bam -@4
#samtools index undi_chromx.REF_CM017870.1.bam -@4 
#samtools index undi_chromx_mod.bam -@4
 
