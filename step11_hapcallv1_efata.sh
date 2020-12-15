#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=5:00:00,vmem=60gb
#PBS -m abe
#PBS -N hapcall_efata_20201208
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/alignments

module load java/1.8.0_131    

/N/project/gorillaPAR/gatk-4.1.9.0/gatk AddOrReplaceReadGroups \
-I efata_chromx.bam \
-O efata_chromx_mod.bam \
-RGLB lib1 -RGPL illumina -RGPU unit1 -RGSM efata

/N/project/gorillaPAR/gatk-4.1.9.0/gatk HaplotypeCaller \
-ERC GVCF \
-I efata_chromx_mod.bam \
-R /N/project/gorillaPAR/sequences/kamilah_chromx.fasta \
-O /N/project/gorillaPAR/variants/efata_chromx.vcf.gz \
-L CM017870.1 


