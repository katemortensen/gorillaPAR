#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=16,walltime=120:00:00,vmem=200gb
#PBS -m abe
#PBS -N bwa_banjo_20201115
#PBS -j oe 

#####  setup  #####

module load samtools
#module load bwa-mem2

cd /N/project/gorillaPAR/alignments

#/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 mem -t 8 kamilah.fna banjo_1.fastq banjo_2.fastq > /N/project/gorillaPAR/alignments/banjo_aln.sam 

/N/project/gorillaPAR/bwa-mem2-2.1_x64-linux/bwa-mem2.avx2 mem -t 16 /N/project/gorillaPAR/sequences/kamilah.fna /N/project/gorillaPAR/sequences/banjo_1.fastq /N/project/gorillaPAR/sequences/banjo_2.fastq | samtools sort -@16 -o banjo_aln.sorted.bam -

#bwa-mem2 -t 8 /N/project/gorillaPAR/sequences/kamilah.fna /N/project/gorillaPAR/sequences/banjo_1.fastq /N/project/gorillaPAR/sequences/banjo_2.fastq | samtools sort -@8 -o banjo_aln.sorted.bam -

#cd /N/project/gorillaPAR/alignments/

#samtools sort banjo_aln.sam -o banjo_aln.sorted.bam

samtools stats banjo_aln.sorted.bam 

samtools index banjo_aln.sorted.bam

#samtools tview banjo_aln.sorted.bam kamilah.fasta

samtools stats banjo_aln.sorted.bam | grep ^COV | cut -f 2- > ./banjo_cov_stats






