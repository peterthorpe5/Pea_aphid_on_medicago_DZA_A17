#!/bin/bash
#$ -cwd
#Abort on any error,
set -e

cd /home/pt40963/scratch/pea_aphid_genomes/N116
perl $HOME/scratch/Downloads/phobius/phobius.pl -short APISUM_N116.gene.AA.fasta > APISUM_N116.gene.AA.PHOBIUS


