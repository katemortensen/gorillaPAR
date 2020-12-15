#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=15:00:00,vmem=60gb
#PBS -m abe
#PBS -N hapcall_20201211
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/alignments

module load java/1.8.0_131    

/N/project/gorillaPAR/gatk-4.1.9.0/gatk AddOrReplaceReadGroups \
-I mimi_chromx.bam \
-O mimi_chromx_mod.bam \
-RGLB lib1 -RGPL illumina -RGPU unit1 -RGSM mimi 

/N/project/gorillaPAR/gatk-4.1.9.0/gatk HaplotypeCaller \
-ERC GVCF \
-I mimi_chromx_mod.bam \
-R /N/project/gorillaPAR/sequences/kamilah_chromx.fasta \
-O /N/project/gorillaPAR/variants/mimi_chromx.vcf.gz \
-L CM017870.1 


