#!/bin/bash
#$ -cwd
cd /home/pt40963/scratch/pea_aphid_genomes/N116

sleep 54000
############################################################################################################

perl -ne 'print uc();' <(cat /home/pt40963/scratch/pea_aphid_genomes/N116/bait_match_bait_match_bait_match_R1.fastq) > abyss_R1.fastq

perl -ne 'print uc();' <(cat /home/pt40963/scratch/pea_aphid_genomes/N116/bait_match_bait_match_bait_match_R2.fastq) > abyss_R2.fastq

abyss-pe k=64 np=17 name=N116 in='/home/pt40963/scratch/pea_aphid_genomes/N116/abyss_R1.fastq /home/pt40963/scratch/pea_aphid_genomes/N116/abyss_R2.fastq'
#

abyss-fac N116-unitigs.fa
wait
python ~/misc_python/assembly_stats.py -m 1000 N116-unitigs.fa
scaffold_stats.pl -f clc.5.fa ./assembly3/clc.3.fa N116-unitigs.fa -k > N116_abyssstats.txt



rm -rf abyss_R1.fastq
rm -rf abyss_R2.fastq

cd /home/pt40963/scratch/pea_aphid_genomes/PS01


############################################################################################################

perl -ne 'print uc();' <(cat /home/pt40963/scratch/pea_aphid_genomes/PS01/bait_match_bait_match_bait_match_R1.fastq) > abyss_R1.fastq

perl -ne 'print uc();' <(cat /home/pt40963/scratch/pea_aphid_genomes/PS01/bait_match_bait_match_bait_match_R2.fastq) > abyss_R2.fastq

abyss-pe k=64 np=17 name=PS01 in='/home/pt40963/scratch/pea_aphid_genomes/PS01/abyss_R1.fastq /home/pt40963/scratch/pea_aphid_genomes/PS01/abyss_R2.fastq'
#

abyss-fac PS01-unitigs.fa
wait
python ~/misc_python/assembly_stats.py -m 1000 PS01-unitigs.fa
scaffold_stats.pl -f PS01-unitigs.fa -k > PS01_abyssstats.txt



rm -rf abyss_R1.fastq
rm -rf abyss_R2.fastq

############################################################################################################

cd /home/pt40963/scratch/pea_aphid_genomes/N116

cat clc.5.fa N116-unitigs.fa > trusted.fasta
wait
/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --trusted-contigs trusted.fasta -k 55,77,99,107,127 -t 17 -m 245 -1 bait_match_bait_match_bait_match_R1.fastq -2 bait_match_bait_match_bait_match_R1.fastq -o N116_SPAdes_trusted

############################################################################################################
cd /home/pt40963/scratch/pea_aphid_genomes/PS01

cat clc.5.fa PS01-unitigs.fa > trusted.fasta
wait
/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --trusted-contigs trusted.fasta -k 55,77,99,107,127 -t 17 -m 245 -1 bait_match_bait_match_bait_match_R1.fastq -2 bait_match_bait_match_bait_match_R1.fastq -o PS01_SPAdes_trusted
