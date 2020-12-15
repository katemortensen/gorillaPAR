#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=2,walltime=02:00:00,vmem=50gb
#PBS -m abe
#PBS -N hapcallv3_20201125
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/variants

module load samtools
module load bcftools 
module load vcftools

# Convert from bam to bcf

#samtools mpileup -g -f /N/project/gorillaPAR/sequences/kamilah_chromx.fasta /N/project/gorillaPAR/alignments/banjo_chromx.REF_CM017870.1.bam > /N/project/gorillaPAR/variants/banjo_chromx_v3.raw.bcf

#samtools mpileup -g -f /N/project/gorillaPAR/sequences/kamilah_chromx.fasta /N/project/gorillaPAR/alignments/undi_chromx.REF_CM017870.1.bam > /N/project/gorillaPAR/variants/undi_chromx_v3.raw.bcf

# SNP Calling

#bcftools call -O b -vc /N/project/gorillaPAR/variants/banjo_chromx_v3.raw.bcf > /N/project/gorillaPAR/variants/banjo_chromx_v3.var.bcf

#bcftools call -O b -vc /N/project/gorillaPAR/variants/undi_chromx_v3.raw.bcf > /N/project/gorillaPAR/variants/undi_chromx_v3.var.bcf

# Filter SNPs

#bcftools view /N/project/gorillaPAR/variants/banjo_chromx_v3.var.bcf | vcfutils.pl varFilter - > /N/project/gorillaPAR/variants/banjo_chromx_v3.var-final.vcf

#bcftools view /N/project/gorillaPAR/variants/undi_chromx_v3.var.bcf | vcfutils.pl varFilter - > /N/project/gorillaPAR/variants/undi_chromx_v3.var-final.vcf

# gzip & tabix vcf files for Jbrowse

#bgzip banjo_chromx_v3.var-final.vcf
#tabix -p vcf banjo_chromx_v3.var-final.vcf.gz 

#bgzip undi_chromx_v3.var-final.vcf
#tabix -p vcf undi_chromx_v3.var-final.vcf.gz 

# combine vcf files

#vcf-merge /N/project/gorillaPAR/variants/banjo_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/undi_chromx_v3.var-final.vcf.gz | bgzip -c > combined.vcf.gz

#tabix -p vcf combined.vcf.gz 

# Convert from bam to bcf

samtools mpileup -g -f /N/project/gorillaPAR/sequences/kamilah_chromx.fasta /N/project/gorillaPAR/alignments/banjo_chromx_v3_filtered.bam > /N/project/gorillaPAR/variants/banjo_chromx_v3_filtered.raw.bcf

#samtools mpileup -g -f /N/project/gorillaPAR/sequences/kamilah_chromx.fasta /N/project/gorillaPAR/alignments/undi_chromx.REF_CM017870.1.bam > /N/project/gorillaPAR/variants/undi_chromx_v3.raw.bcf

# SNP Calling

bcftools call -O b -vc /N/project/gorillaPAR/variants/banjo_chromx_v3_filtered.raw.bcf > /N/project/gorillaPAR/variants/banjo_chromx_v3_filtered.var.bcf

#bcftools call -O b -vc /N/project/gorillaPAR/variants/undi_chromx_v3.raw.bcf > /N/project/gorillaPAR/variants/undi_chromx_v3.var.bcf

# Filter SNPs

bcftools view /N/project/gorillaPAR/variants/banjo_chromx_v3_filtered.var.bcf | vcfutils.pl varFilter - > /N/project/gorillaPAR/variants/banjo_chromx_v3_filtered.var-final.vcf

#bcftools view /N/project/gorillaPAR/variants/undi_chromx_v3.var.bcf | vcfutils.pl varFilter - > /N/project/gorillaPAR/variants/undi_chromx_v3.var-final.vcf

# gzip & tabix vcf files for Jbrowse

bgzip banjo_chromx_v3_filtered.var-final.vcf
tabix -p vcf banjo_chromx_v3_filtered.var-final.vcf.gz 

#bgzip undi_chromx_v3.var-final.vcf
#tabix -p vcf undi_chromx_v3.var-final.vcf.gz 

# combine vcf files

vcf-merge /N/project/gorillaPAR/variants/banjo_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/undi_chromx_v3.var-final.vcf.gz | bgzip -c > combined.vcf.gz

tabix -p vcf combined.vcf.gz 


