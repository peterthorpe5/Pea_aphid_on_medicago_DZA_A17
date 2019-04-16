#!/bin/bash
#$ -cwd

cd /home/pt40963/scratch/pea_aphid_genomes/N116


# transrate command
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/APISUM_N116.gene.nt.fasta --left /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R1.fq.gz --right /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R2.fq.gz --threads 16


# transrate command
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R2.fastq --threads 16

transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_PS01_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R2.fastq  --threads 16


#bam read to identify chimeras. The probabilty that it is one gene - not more than one fused. 
#~/transrate-tools/src/bam-read name_offile.bam chimera_indetification_outfile.csv 0.95