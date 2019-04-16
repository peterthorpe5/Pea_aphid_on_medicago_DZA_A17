#!/bin/bash
#$ -cwd
#Abort on any error,
set -e
cd /home/pt40963/scratch/pea_aphid_genomes/PS01

perl /$HOME/scratch/Downloads/phobius/phobius.pl -short APISUM_PS01.gene.AA.fasta > APISUM_PS01.gene.AA.PHOBIUS


