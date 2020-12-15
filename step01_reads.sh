#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=2,walltime=20:00:00,vmem=30gb
#PBS -m abe
#PBS -N reads_20201202
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/sequences/

#Banjo

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/005/ERR3078025/ERR3078025_1.fastq.gz ./Banjo/
#gunzip ERR3078025_1.fastq.gz 

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/005/ERR3078025/ERR3078025_2.fastq.gz ./Banjo
#gunzip ERR3078025_2.fastq.gz 

#Undi 

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/006/ERR3078026/ERR3078026_1.fastq.gz ./Undi/
#gunzip ERR3078026_1.fastq.gz 

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/006/ERR3078026/ERR3078026_2.fastq.gz ./Undi
#gunzip ERR3078026_2.fastq.gz 

#human 

#wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.39_GRCh38.p13/GCF_000001405.39_GRCh38.p13_genomic.fna.gz ./human/
#gunzip GCF_000001405.39_GRCh38.p13_genomic.fna.gz

#wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.39_GRCh38.p13/GCF_000001405.39_GRCh38.p13_genomic.gff.gz ./human/
#gunzip GCF_000001405.39_GRCh38.p13_genomic.gff.gz

# Efata 

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/007/ERR3078027/ERR3078027_1.fastq.gz
#gunzip ERR3078027_1.fastq.gz
#mv ERR3078027_1.fastq efata_1.fastq

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/007/ERR3078027/ERR3078027_2.fastq.gz
#gunzip ERR3078027_2.fastq.gz
#mv ERR3078027_2.fastq efata_2.fastq

# Mimi

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/008/ERR3078028/ERR3078028_1.fastq.gz 
#gunzip ERR3078028_1.fastq.gz 
#mv ERR3078028_1.fastq mimi_1.fastq

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/008/ERR3078028/ERR3078028_2.fastq.gz
#gunzip ERR3078028_2.fastq.gz 
#mv ERR3078028_2.fastq mimi_2.fastq

# Mutasi

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/009/ERR3078029/ERR3078029_1.fastq.gz
gunzip ERR3078029_1.fastq.gz
mv ERR3078029_1.fastq mutasi_1.fastq

#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/009/ERR3078029/ERR3078029_2.fastq.gz
gunzip ERR3078029_2.fastq.gz
mv ERR3078029_2.fastq mutasi_2.fastq

# Mawenzi

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/000/ERR3078030/ERR3078030_1.fastq.gz
gunzip ERR3078030_1.fastq.gz
mv ERR3078030_1.fastq mawenzi_1.fastq

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR307/000/ERR3078030/ERR3078030_2.fastq.gz
gunzip ERR3078030_2.fastq.gz
mv ERR3078030_2.fastq mawenzi_2.fastq




