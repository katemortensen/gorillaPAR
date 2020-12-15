#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=16,walltime=40:0:00,vmem=200gb
#PBS -m abe
#PBS -N bwa_undi_20201117
#PBS -j oe 

#####  setup  #####

module load samtools
#module load bwa-mem2

cd /N/project/gorillaPAR/alignments

#/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 mem -t 8 kamilah.fna undi_1.fastq undi_2.fastq > /N/project/gorillaPAR/alignments/undi_aln.sam 

/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 mem -t 8 /N/project/gorillaPAR/sequences/kamilah.fna /N/project/gorillaPAR/sequences/undi_1.fastq /N/project/gorillaPAR/sequences/undi_2.fastq | samtools sort -@8 -o undi_aln.sorted.bam -

#bwa-mem2 -t 8 /N/project/gorillaPAR/sequences/kamilah.fna /N/project/gorillaPAR/sequences/undi_1.fastq /N/project/gorillaPAR/sequences/undi_2.fastq | samtools sort -@8 -o undi_aln.sorted.bam -

#cd /N/project/gorillaPAR/alignments/

#samtools sort undi_aln.sam -o undi_aln.sorted.bam

samtools stats undi_aln.sorted.bam 

samtools index undi_aln.sorted.bam

#samtools tview undi_aln.sorted.bam kamilah.fasta

samtools stats undi_aln.sorted.bam | grep ^COV | cut -f 2- > ./undi_cov_stats






