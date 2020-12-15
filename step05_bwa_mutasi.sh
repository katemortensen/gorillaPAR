#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=10,walltime=50:00:00,vmem=150gb
#PBS -m abe
#PBS -N bwa_mutasi_20201203
#PBS -j oe 

#####  setup  #####

module load samtools

cd /N/project/gorillaPAR/alignments

/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 mem -t 10 /N/project/gorillaPAR/sequences/kamilah.fna /N/project/gorillaPAR/sequences/mutasi_1.fastq /N/project/gorillaPAR/sequences/mutasi_2.fastq | samtools sort -@10 -o mutasi_aln.sorted.bam -

samtools index mutasi_aln.sorted.bam

#samtools tview mutasi_aln.sorted.bam kamilah.fasta

samtools stats mutasi_aln.sorted.bam | grep ^COV | cut -f 2- > ./mutasi_cov_stats






