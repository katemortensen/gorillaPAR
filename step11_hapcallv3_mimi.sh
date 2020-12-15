#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=2,walltime=05:00:00,vmem=100gb
#PBS -m abe
#PBS -N hapcallv3_20201211
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/variants

module load samtools
module load bcftools 
module load vcftools

# Convert from bam to bcf

samtools mpileup -g -f /N/project/gorillaPAR/sequences/kamilah_chromx.fasta /N/project/gorillaPAR/alignments/mimi_chromx.REF_CM017870.1.bam > /N/project/gorillaPAR/variants/mimi_chromx_v3.raw.bcf

# SNP Calling

bcftools call -O b -vc /N/project/gorillaPAR/variants/mimi_chromx_v3.raw.bcf > /N/project/gorillaPAR/variants/mimi_chromx_v3.var.bcf

# Filter SNPs

bcftools view /N/project/gorillaPAR/variants/mimi_chromx_v3.var.bcf | vcfutils.pl varFilter - > /N/project/gorillaPAR/variants/mimi_chromx_v3.var-final.vcf

# gzip & tabix vcf files for Jbrowse

bgzip mimi_chromx_v3.var-final.vcf
tabix -p vcf mimi_chromx_v3.var-final.vcf.gz 


