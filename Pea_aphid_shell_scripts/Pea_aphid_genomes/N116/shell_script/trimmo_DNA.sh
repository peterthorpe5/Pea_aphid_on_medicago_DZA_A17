#!/bin/bash
#$ -cwd
cd /home/pt40963/scratch/pea_aphid_genomes/N116

cat *_1.fastq.gz > r1.fq.gz
cat *_2.fastq.gz > r2.fq.gz

java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 8 -phred33 r1.fq.gz r2.fq.gz R1.fq crap_R1_unpaired.fq.gz R2.fq crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:61  

rm r1.fq.gz r2.fq.gz crap_*
python3 ~/misc_python/NGS/fastq_to_sam.py R1.fq R2.fq | samtools view -S -b - > reads.bam