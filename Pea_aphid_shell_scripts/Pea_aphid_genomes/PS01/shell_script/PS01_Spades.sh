#!/bin/bash
#$ -cwd

cd /home/pt40963/scratch/pea_aphid_genomes/PS01

#cat A.pisum_PS01_CLC.fasta DISCOVARa.lines.fasta > trusted.fasta
wait
#/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --trusted-contigs trusted.fasta -k 55,77,99,107,127 -t 17 -m 245 -1 bait_match_bait_match_bait_match_bait_match_R1.fastq.gz -2 bait_match_bait_match_bait_match_bait_match_R2.fastq.gz -o PS01_SPAdes_trusted_CLC_Discovar


wait
/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --trusted-contigs A.pisum_PS01_CLC.fasta -k 55,77,99,107,127 -t 17 -m 245 -1 bait_match_bait_match_bait_match_bait_match_R1.fastq.gz -2 bait_match_bait_match_bait_match_bait_match_R2.fastq.gz -o PS01_SPAdes_trusted_CLC
