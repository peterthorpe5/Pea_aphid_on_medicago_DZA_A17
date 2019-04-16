#!/bin/bash
#$ -cwd
#$ -l hostname="n13-16-384-bender"

# prepare vir reads
cd /home/pt40963/scratch/pea_aphid_genomes/VIR

#cp /mnt/shared/projects/aphids/20170731_A.pisum_DNAseq_vir_medicago/10952_Bos_Jorunn/raw_data/data_by_date/20170727/all_reads/XP1/*.fastq.gz ./

#cat *_1.fastq.gz > r1.fq.gz
#cat *_2.fastq.gz > r2.fq.gz

java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 32 -phred33 r1.fq.gz r2.fq.gz R1.fastq.gz crap_R1_unpaired.fq.gz R2.fastq.gz crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:61  

rm r1.fq.gz r2.fq.gz crap_*

#####################################################
# prepare avr reads
cd /home/pt40963/scratch/pea_aphid_genomes/AVR

cp /mnt/shared/projects/aphids/20170731_A.pisum_DNAseq_vir_medicago/10952_Bos_Jorunn/raw_data/data_by_date/20170727/all_reads/XP9/*.fastq.gz ./

cat *_1.fastq.gz > r1.fq.gz
cat *_2.fastq.gz > r2.fq.gz

java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 32 -phred33 r1.fq.gz r2.fq.gz R1.fastq.gz crap_R1_unpaired.fq.gz R2.fastq.gz crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:61  

rm r1.fq.gz r2.fq.gz crap_*

#################################################
# transrate to map the reads
cd /home/pt40963/scratch/pea_aphid_genomes/PS01
# vir
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_VIR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq.gz --right /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq.gz --threads 32
# avr
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_AVR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq.gz --right /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq.gz --threads 32

##############################
# map oto N116
#################################################
# transrate to map the reads
cd /home/pt40963/scratch/pea_aphid_genomes/N116
# vir
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_VIR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq.gz --right /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq.gz --threads 32
# avr
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_AVR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq.gz --right /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq.gz --threads 32



cd /home/pt40963/scratch/pea_aphid_genomes/PS01


# transrate command
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R2.fastq --threads 32

transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_N116_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R1.fastq  --right /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R2.fastq --threads 32

#bam read to identify chimeras. The probabilty that it is one gene - not more than one fused. 
#~/transrate-tools/src/bam-read name_offile.bam chimera_indetification_outfile.csv 0.95



cd /home/pt40963/scratch/pea_aphid_genomes/N116


# transrate command
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/APISUM_N116.gene.nt.fasta --left /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R1.fq.gz --right /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R2.fq.gz --threads 32


# transrate command
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R2.fastq --threads 32

transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_PS01_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R2.fastq  --threads 32
