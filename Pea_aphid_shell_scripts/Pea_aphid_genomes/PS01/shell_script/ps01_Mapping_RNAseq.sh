#!/bin/bash
#$ -l hostname="n13*"
#$ -cwd
#set -e

cd /home/pt40963/scratch/pea_aphid_genomes/PS01


####################################################################################################################################################################
# 1) mapping with STAR
# Map using STAR

#mkdir star_indicies 


#STAR --runMode genomeGenerate --limitGenomeGenerateRAM 229760745173 --runThreadN 16 --genomeDir ./star_indicies --genomeFastaFiles /home/pt40963/scratch/pea_aphid_genomes/PS01/A.pisum_PS01.genome.v1.0.fasta

#strict

#STAR --genomeDir star_indicies/  --runThreadN 8 --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 4 --readFilesCommand zcat --outFileNamePrefix PS01 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R1.fq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R2.fq.gz





samtools sort -l 10 -o sorted.bam PS01.sortedByCoord.out.bam

samtools index sorted.bam

bam2hints --intronsonly --in=sorted.bam --out=hints.gff

wait

augustus --genemodel=complete --protein=on --start=on --alternatives-from-evidence=true --stop=on --cds=on --introns=on --gff3=on --extrinsicCfgFile=/home/pt40963/Downloads/augustus-3.0.3/config/species/Myzus_cerasi/extrinsic.Myzus_cerasi.cfg --hintsfile=hints.gff --outfile=A.pisum_PS01.genome.v1.0.fasta_pea_aphid_masked_modles201801801.gff --noInFrameStop=true --strand=both --species=pea_aphid_masked A.pisum_PS01.genome.v1.0.fasta



