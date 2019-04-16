#!/bin/bash
#$ -cwd


###################################################################################################################
# transrate to map the reads
cd /home/pt40963/scratch/pea_aphid_genomes/PS01
# vir
cd /home/pt40963/scratch/pea_aphid_genomes/PS01/transrate_results/PS01_alt_VIR_reads_MIN1000
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_VIR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq --threads 32
##samtools sort -@ 36 *.bam sorted

#samtools index sorted.bam
#samtools depth sorted.bam > PS01_alt_VIR_reads_MIN1000.DNAseq.depth

# avr
cd /home/pt40963/scratch/pea_aphid_genomes/PS01/transrate_results/PS01_alt_AVR_reads_MIN1000
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_AVR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq --threads 32
##samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > PS01_alt_AVR_reads_MIN1000.DNAseq.depth


cd /home/pt40963/scratch/pea_aphid_genomes/PS01/transrate_results/PS01_alt_MIN1000
#samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > PS01_alt_MIN1000.DNAseq.depth

# transrate command
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R2.fastq --threads 32


cd /home/pt40963/scratch/pea_aphid_genomes/PS01/transrate_results/PS01_alt_N116_reads_MIN1000

#samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > PS01_alt_N116_reads_MIN1000.DNAseq.depth
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_N116_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R1.fastq  --right /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R2.fastq --threads 32

#bam read to identify chimeras. The probabilty that it is one gene - not more than one fused. 
#~/transrate-tools/src/bam-read name_offile.bam chimera_indetification_outfile.csv 0.9
############################################################################################################################################################################
##############################
# map oto N116
#################################################
# transrate to map the reads
cd /home/pt40963/scratch/pea_aphid_genomes/N116/transrate_results/N116_alt_VIR_reads_MIN1000

# vir
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_VIR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq --threads 32
#samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > N116_alt_VIR_reads_MIN1000.DNAseq.depth


cd /home/pt40963/scratch/pea_aphid_genomes/N116/transrate_results/N116_alt_AVR_reads_MIN1000

# avr
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_AVR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq --threads 32
#samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > N116_alt_AVR_reads_MIN1000.DNAseq.depth



cd /home/pt40963/scratch/pea_aphid_genomes/N116/transrate_results/N116_alt_MIN1000
samtools sort -@ 36 *.bam sorted
samtools index sorted.bam
samtools depth sorted.bam > N116_alt_MIN1000.DNAseq.depth

# transrate command
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/APISUM_N116.gene.nt.fasta --left /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R1.fq.gz --right /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/R2.fq.gz --threads 32


# transrate command
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/N116_again/bait_miss_R2.fastq --threads 32

cd /home/pt40963/scratch/pea_aphid_genomes/N116/transrate_results/N116_alt_PS01_reads_MIN1000
samtools sort -@ 16 *.bam sorted
samtools index sorted.bam
samtools depth sorted.bam > N116_alt_PS01_reads_MIN1000.DNAseq.depth

#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt_PS01_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/PS01_again/bait_miss_R2.fastq  --threads 32


cd /home/pt40963/scratch/pea_aphid_genomes/PS01/transrate_results/PS01_alt_VIR_reads_MIN1000
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_VIR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/VIR/R1.fastq --threads 32
##samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > PS01_alt_VIR_reads_MIN1000.DNAseq.depth

# avr
cd /home/pt40963/scratch/pea_aphid_genomes/PS01/transrate_results/PS01_alt_AVR_reads_MIN1000
#transrate --assembly /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt_AVR_reads_MIN1000.fasta --left /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq --right /home/pt40963/scratch/pea_aphid_genomes/AVR/R1.fastq --threads 32
##samtools sort -@ 36 *.bam sorted
#samtools index sorted.bam
#samtools depth sorted.bam > PS01_alt_AVR_reads_MIN1000.DNAseq.depth