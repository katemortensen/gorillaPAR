#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=10,walltime=50:00:00,vmem=150gb
#PBS -m abe
#PBS -N bwa_mimi_20201203
#PBS -j oe 

#####  setup  #####

module load samtools

cd /N/project/gorillaPAR/alignments

/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 mem -t 10 /N/project/gorillaPAR/sequences/kamilah.fna /N/project/gorillaPAR/sequences/mimi_1.fastq /N/project/gorillaPAR/sequences/mimi_2.fastq | samtools sort -@10 -o mimi_aln.sorted.bam -

samtools index mimi_aln.sorted.bam

#samtools tview mimi_aln.sorted.bam kamilah.fasta

samtools stats mimi_aln.sorted.bam | grep ^COV | cut -f 2- > ./mimi_cov_stats






