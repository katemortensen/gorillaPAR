#!/bin/bash 

#PBS -M kmorten@iu.edu
#PBS -l nodes=1:ppn=4,walltime=5:00:00,vmem=100gb
#PBS -m abe
#PBS -N chromx_20201211
#PBS -j oe 

#####  setup  #####

cd /N/project/gorillaPAR/alignments

module load samtools 
module load bamtools


# Mimi

#samtools view -h mimi_aln.sorted.bam CM017870.1 > mimi_chromx.sam
#samtools view -bS mimi_chromx.sam > mimi_chromx.bam
#bamtools split -in mimi_chromx.bam -reference

# Mawenzi

samtools view -h mawenzi_aln.sorted.bam CM017870.1 > mawenzi_chromx.sam
samtools view -bS mawenzi_chromx.sam > mawenzi_chromx.bam
bamtools split -in mawenzi_chromx.bam -reference

# Mutasi

samtools view -h mutasi_aln.sorted.bam CM017870.1 > mutasi_chromx.sam
samtools view -bS mutasi_chromx.sam > mutasi_chromx.bam
bamtools split -in mutasi_chromx.bam -reference

# Efata

#samtools view -h efata_aln.sorted.bam CM017870.1 > efata_chromx.sam
#samtools view -bS efata_chromx.sam > efata_chromx.bam
#bamtools split -in efata_chromx.bam -reference


# Banjo

#samtools view -h banjo_aln.sorted.bam CM017870.1 > banjo_chromx.sam
#samtools view -bS banjo_chromx.sam > banjo_chromx.bam
#bamtools split -in banjo_chromx.bam -reference

# Undi

#samtools view -h undi_aln.sorted.bam CM017870.1 > undi_chromx.sam
#samtools view -bS undi_chromx.sam > undi_chromx.bam
#bamtools split -in undi_chromx.bam -reference

# Kamilah

#cd /N/project/gorillaPAR/sequences
#curl --header 'Host: www.ncbi.nlm.nih.gov' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --referer 'https://www.ncbi.nlm.nih.gov/nuccore/CM017870.1' --cookie 'ncbi_sid=29C93EEFD48B2269_3FF5SID; _ga=GA1.2.178811521.1575324551; books.article.report=; pmc.article.report=classic; newuser=mortensencatherine@yahoo.com; BlastCubbyImported=passive; MyBlastUser=103FO8dH1M817e7A9517D0029; WebEnv=1-AkEtwettTTr-Vg0bLIqx8tnz0ArsTouW7QyLVUQZbAa%4029C93EEFD48B2269_3FF5SID; ncbi_pinger=N4IgDgTgpgbg+mAFgSwCYgFwgMIFEAcAIoQEwCcADAGIBChArHhQIwVvvsAsJ9LAzPQB0AWzglOIADQgAxgBtkMgNYA7KAA8ALplAVMsgPYrNUY3ERQAhqigRJAZ1Oo4mgwAJLCgOYq4EZF6Imm4AVgEAtCoyAEbIYAZgYLaS0PYArnKa9nCOmprIKl72kkZQOVB5BV5uckZecAr2mpIyRibGLQZykioFZa1yUiDM+o4qqK6SwpYFrcamzbjG0ABeVAYQwkN8ZPrMAOz0fPhDnHpYzGT0+3rSnBJY8oqqGtp39Pq3IJwAbPoAZp5HKd9nsKD9QXcTlgSCQTnddlhNF5NHBUJYIEohrx9EFNGB7BgAPREgDu5MEUVilLkwkpyEQgi8BhgRJUaRkrWgROwAFkWPt8DdBMwAMTYkZYbEkfQAZScblcWAAvtI0ipatY1FodCA+HwAUCoNsHiBNBA0sbpMd9NtEd9mLDdndzt8+CQfiM7qb1ZrUNq3t8PhdsX8LhRISBrvp9pHPWC2CBVYZhMIjAHdTKsAtVtt9OzORsrd99F5TNFLCosdJgyAhmGQGWVBWq0NQVggsJBtJoSASF97TZARlA8xJcMhswDSHpMxTdBzchYMXmLWDnwDpx8BQyM7hg3PN3hu2QIC5MDZ72zxe+668ERSJRaAwmKwOBxuLwp0JROIhiRxxzKAVgwAsuSgDAmxbJQMAAOQAeVg3B/yzEByVJSkYmQGk6V6RlmRgf97QOH4vj4V0x0TO5pxAChBHI+jsRo5gfjICQa1NMh8BGZVlSAA===' --header 'Upgrade-Insecure-Requests: 1' 'https://www.ncbi.nlm.nih.gov/sviewer/viewer.cgi?tool=portal&save=file&log$=seqview&db=nuccore&report=fasta&id=1731748099&' --output 'sequence.fasta'
#mv sequence.fasta kamilah_chromx.fasta



