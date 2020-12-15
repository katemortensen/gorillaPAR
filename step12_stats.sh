#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=1,walltime=00:59:00,vmem=30gb
#PBS -m abe
#PBS -N stats_20201209 
#PBS -j oe 
#PBS -q debug 

#####  setup  #####

#module bcftools 
module load vcftools
module load samtools

cd /N/project/gorillaPAR/

######## Combine VCF files #######

vcf-merge /N/project/gorillaPAR/variants/hapcallv3_samtools/banjo_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/hapcallv3_samtools/undi_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/hapcallv3_samtools/efata_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/hapcallv3_samtools/mimi_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/hapcallv3_samtools/mutasi_chromx_v3.var-final.vcf.gz /N/project/gorillaPAR/variants/hapcallv3_samtools/mawenzi_chromx_v3.var-final.vcf.gz | bgzip -c > ./variants.hapcallv3_samtoools/combined.vcf.gz


######## Heterozygosity ########

# site pi
vcftools --gzvcf ./variants/hapcallv3_samtools/banjo_chromx_v3.var-final.vcf.gz --site-pi --out ./stats/banjo_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/efata_chromx_v3.var-final.vcf.gz --site-pi --out ./stats/efata_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/undi_chromx_v3.var-final.vcf.gz --site-pi --out ./stats/undi_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/mimi_chromx_v3.var-final.vcf.gz --site-pi --out ./stats/mimi_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/mutasi_chromx_v3.var-final.vcf.gz --site-pi --out ./stats/mutasi_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/mawenzi_chromx_v3.var-final.vcf.gz --site-pi --out ./stats/mawenzi_chromx_v3


# window pi no step 
vcftools --gzvcf ./variants/hapcallv3_samtools/banjo_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 500000 --out ./stats/banjo_chromx_v3_500k
vcftools --gzvcf ./variants/hapcallv3_samtools/efata_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 500000 --out ./stats/efata_chromx_v3_500k
vcftools --gzvcf ./variants/hapcallv3_samtools/undi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 500000 --out ./stats/undi_chromx_v3_500k
vcftools --gzvcf ./variants/hapcallv3_samtools/mimi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 500000 --out ./stats/mimi_chromx_v3_500k
vcftools --gzvcf ./variants/hapcallv3_samtools/mutasi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 500000 --out ./stats/mutasi_chromx_v3_500k
vcftools --gzvcf ./variants/hapcallv3_samtools/mawenzi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 500000 --out ./stats/mawenzi_chromx_v3_500k


vcftools --gzvcf ./variants/hapcallv3_samtools/banjo_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 1000000 --out ./stats/banjo_chromx_v3_1M
vcftools --gzvcf ./variants/hapcallv3_samtools/efata_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 1000000 --out ./stats/efata_chromx_v3_1M
vcftools --gzvcf ./variants/hapcallv3_samtools/undi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 1000000 --out ./stats/undi_chromx_v3_1M
vcftools --gzvcf ./variants/hapcallv3_samtools/mimi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 1000000 --out ./stats/mimi_chromx_v3_1M
vcftools --gzvcf ./variants/hapcallv3_samtools/mutasi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 1000000 --out ./stats/mutasi_chromx_v3_1M
vcftools --gzvcf ./variants/hapcallv3_samtools/mawenzi_chromx_v3.var-final.vcf.gz --minQ 200 --window-pi 1000000 --out ./stats/mawenzi_chromx_v3_1M

vcftools --gzvcf ./variants/hapcallv2_samtools/banjo_chromx_v2.vcf --window-pi 1000000 --out ./stats/banjo_chromx_v2_1M
vcftools --gzvcf ./variants/hapcallv2_samtools/efata_chromx_v2.vcf --window-pi 1000000 --out ./stats/efata_chromx_v2_1M
vcftools --gzvcf ./variants/hapcallv2_samtools/undi_chromx_v2.vcf --window-pi 1000000 --out ./stats/undi_chromx_v2_1M
vcftools --gzvcf ./variants/hapcallv2_samtools/mimi_chromx_v2.vcf --window-pi 1000000 --out ./stats/mimi_chromx_v2_1M
vcftools --gzvcf ./variants/hapcallv2_samtools/mutasi_chromx_v2.vcf --window-pi 1000000 --out ./stats/mutasi_chromx_v2_1M
vcftools --gzvcf ./variants/hapcallv2_samtools/mawenzi_chromx_v2.vcf --window-pi 1000000 --out ./stats/mawenzi_chromx_v2_1M

vcftools --gzvcf ./variants/hapcallv1_samtools/banjo_chromx_v1.vcf.gz --window-pi 1000000 --out ./stats/banjo_chromx_v1_1M
vcftools --gzvcf ./variants/hapcallv1_samtools/efata_chromx_v1.vcf.gz --window-pi 1000000 --out ./stats/efata_chromx_v1_1M
vcftools --gzvcf ./variants/hapcallv1_samtools/undi_chromx_v1.vcf.gz --window-pi 1000000 --out ./stats/undi_chromx_v1_1M
vcftools --gzvcf ./variants/hapcallv1_samtools/mimi_chromx_v1.vcf.gz --window-pi 1000000 --out ./stats/mimi_chromx_v1_1M
vcftools --gzvcf ./variants/hapcallv1_samtools/mutasi_chromx_v1.vcf.gz --window-pi 1000000 --out ./stats/mutasi_chromx_v1_1M
vcftools --gzvcf ./variants/hapcallv1_samtools/mawenzi_chromx_v1.vcf.gz --window-pi 1000000 --out ./stats/mawenzi_chromx_v1_1M



# window pi step
vcftools --gzvcf ./variants/hapcallv3_samtools/banjo_chromx_v3.var-final.vcf.gz --window-pi 10000 --window-pi-step 5000 --out ./stats/banjo_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/efata_chromx_v3.var-final.vcf.gz --window-pi 10000 --window-pi-step 5000 --out ./stats/efata_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/undi_chromx_v3.var-final.vcf.gz --window-pi 10000 --window-pi-step 5000 --out ./stats/undi_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/mimi_chromx_v3.var-final.vcf.gz --window-pi 10000 --window-pi-step 5000 --out ./stats/mimi_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/mutasi_chromx_v3.var-final.vcf.gz --window-pi 10000 --window-pi-step 5000 --out ./stats/mutasi_chromx_v3
vcftools --gzvcf ./variants/hapcallv3_samtools/mawenzi_chromx_v3.var-final.vcf.gz --window-pi 10000 --window-pi-step 5000 --out ./stats/mawenzi_chromx_v3

######## Depth ########

cd /N/project/gorillaPAR/

samtools depth -a ./alignments/banjo_chromx.bam > ./stats/banjo_chromx_depth.tsv
samtools depth -a ./alignments/efata_chromx.bam > ./stats/efata_chromx_depth.tsv
samtools depth -a ./alignments/undi_chromx.bam > ./stats/undi_chromx_depth.tsv
samtools depth -a ./alignments/mimi_chromx.bam > ./stats/mimi_chromx_depth.tsv
samtools depth -a ./alignments/mutasi_chromx.bam > ./stats/mutasi_chromx_depth.tsv
samtools depth -a ./alignments/mawenzi_chromx.bam > ./stats/mawenzi_chromx_depth.tsv


source activate gorillaPAR

python3 calcDepthWinRatio.py -f ./stats/banjo_chromx_depth.tsv -o ./stats/banjo_chromx_depth_500k -w 500000
python3 calcDepthWinRatio.py -f ./stats/efata_chromx_depth.tsv -o ./stats/efata_chromx_depth_500k -w 500000
python3 calcDepthWinRatio.py -f ./stats/undi_chromx_depth.tsv -o ./stats/undi_chromx_depth_500k -w 500000
python3 calcDepthWinRatio.py -f ./stats/mimi_chromx_depth.tsv -o ./stats/mimi_chromx_depth_500k -w 500000
python3 calcDepthWinRatio.py -f ./stats/mutasi_chromx_depth.tsv -o ./stats/mutasi_chromx_depth_500k -w 500000
python3 calcDepthWinRatio.py -f ./stats/mawenzi_chromx_depth.tsv -o ./stats/mawenzi_chromx_depth_500k -w 500000


python3 calcDepthWinRatio.py -f ./stats/banjo_chromx_depth.tsv -o ./stats/banjo_chromx_depth_1M -w 1000000
python3 calcDepthWinRatio.py -f ./stats/efata_chromx_depth.tsv -o ./stats/efata_chromx_depth_1M -w 1000000
python3 calcDepthWinRatio.py -f ./stats/undi_chromx_depth.tsv -o ./stats/undi_chromx_depth_1M -w 1000000
python3 calcDepthWinRatio.py -f ./stats/mimi_chromx_depth.tsv -o ./stats/mimi_chromx_depth_1M -w 1000000
python3 calcDepthWinRatio.py -f ./stats/mutasi_chromx_depth.tsv -o ./stats/mutasi_chromx_depth_1M -w 1000000
python3 calcDepthWinRatio.py -f ./stats/mawenzi_chromx_depth.tsv -o ./stats/mawenzi_chromx_depth_1M -w 1000000



