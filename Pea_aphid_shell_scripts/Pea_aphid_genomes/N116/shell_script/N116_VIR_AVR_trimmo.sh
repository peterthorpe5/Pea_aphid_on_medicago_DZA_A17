#!/bin/bash
#$ -cwd

# prepare vir reads




#################################################
# transrate to map the reads
cd /home/pt40963/scratch/pea_aphid_genomes/N116
# vir
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_VIR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq.gz --right /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq.gz --threads 16
# avr
transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_AVR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq.gz --right /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq.gz --threads 16
