#!/bin/bash
#$ -l hostname="n13*"
#$ -cwd
set -e

cd /mnt/shared/scratch/pt40963/Pea_aphid
# data in   cd /mnt/shared/projects/aphids/201409_pea_aphid_RNAseq
time ulimit -s unlimited


####################################################################################################################################################################
# 1) mapping with STAR
# Map using STAR

#mkdir star_indicies 


#STAR --runMode genomeGenerate --runThreadN 16 --genomeDir /mnt/shared/scratch/pt40963/Pea_aphid/star_indicies --genomeFastaFiles /mnt/shared/scratch/pt40963/Pea_aphid/Pea_aphid_genome_no_discriptions.fasta

#strict
#STAR --genomeDir star_indicies/  --runThreadN 16 --sjdbGTFfile A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 5 --outFilterMismatchNoverLmax 0.2 --readFilesCommand zcat --readFilesIn ./all_r1.fq.gz ./all_r2.fq.gz --outFileNamePrefix Pea_strict_RNAseq_mapped


####################################################################################################################################################################
# 2) Trinity genome guided assembly


#/home/pt40963/Downloads/trinityrnaseq-2.1.1/Trinity --normalize_max_read_cov 50 --seqType fq --genome_guided_max_intron 58122 --max_memory 230G --left ./all_r1.fq.gz --right ./all_r2.fq.gz --SS_lib_type FR --CPU 12 --genome_guided_min_coverage 2 --min_kmer_cov 2 --genome_guided_bam Pea_strict_RNAseq_mappedAligned.sortedByCoord.out.bam --output trinity_Pea_N116_PS01 

# old trinity NOT USED ...
#/home/pt40963/Downloads/trinityrnaseq_r20140717/Trinity --seqType fq --JM 2G --left ./all_r1.fq.gz --right ./all_r2.fq.gz --normalize_reads --genome /home/pt40963/Pea_aphid/Pea_aphid_genome_no_discriptions.fasta --genome_guided_max_intron 12000 --genome_guided_sort_buffer 5G --genome_guided_CPU 2 --GMAP_CPU 8 --CPU 8 --bflyCPU 2 --min_kmer_cov 2 --SS_lib_type FR --output pea_aphid_genome_guided


####################################################################################################################################################################
# 3) Transrate

cd /mnt/shared/scratch/pt40963/Pea_aphid/trinity_Pea_N116_PS01


#transrate --assembly Trinity-GG.fasta --left ../all_r1.fq.gz --right ../all_r2.fq.gz --threads 12
#transrate --assembly good.Trinity-GG.fasta --left ../all_r1.fq.gz --right ../all_r2.fq.gz --threads 16


# /home/pt40963/Downloads/trinityrnaseq-2.1.1/util/TrinityStats.pl Trinity-GG.fasta > trinity_assembly.txt



cd /mnt/shared/scratch/pt40963/Pea_aphid/trinity_Pea_N116_PS01


#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --prep_reference --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_A17_1_R1_Q30paired.fq.gz --right ../data/N116_A17_1_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_A17_1 --output_prefix  pea_aphid_N116_A17_1
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_A17_3_R1_Q30paired.fq.gz --right ../data/N116_A17_3_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_A17_3 --output_prefix  pea_aphid_N116_A17_3
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_A17_2_R1_Q30paired.fq.gz --right ../data/N116_A17_2_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_A17_2 --output_prefix  pea_aphid_N116_A17_2
##                                                                                                                                                                                                                                                                                                                     
##                                                                                                                                                                                                                                                                                                                     
##                                                                                                                                                                                                                                                                                                                     
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_D2A_1_R1_Q30paired.fq.gz --right ../data/N116_D2A_1_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_D2A_1 --output_prefix  pea_aphid_N116_D2A_1
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_D2A_2_R1_Q30paired.fq.gz --right ../data/N116_D2A_2_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_D2A_2 --output_prefix  pea_aphid_N116_D2A_2
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_D2A_3_R1_Q30paired.fq.gz --right ../data/N116_D2A_3_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_D2A_3 --output_prefix  pea_aphid_N116_D2A_3
##                                                                                                                                                                                                                                                                                                                     
##                                                                                                                                                                                                                                                                                                                     
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_D2A_2_R1_Q30paired.fq.gz --right ../data/N116_D2A_2_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_D2A_2 --output_prefix  pea_aphid_N116_D2A_2
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_D2A_1_R1_Q30paired.fq.gz --right ../data/N116_D2A_1_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_D2A_1 --output_prefix  pea_aphid_N116_D2A_1
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/N116_D2A_3_R1_Q30paired.fq.gz --right ../data/N116_D2A_3_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_N116_D2A_3 --output_prefix  pea_aphid_N116_D2A_3
##                                                                                                                                                                                                                                                                                                                     
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/PS01_D2A_1_R1_Q30paired.fq.gz --right ../data/PS01_D2A_1_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_PS01_D2A_1 --output_prefix  pea_aphid_PS01_D2A_1
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/PS01_D2A_2_R1_Q30paired.fq.gz --right ../data/PS01_D2A_2_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_PS01_D2A_2 --output_prefix  pea_aphid_PS01_D2A_2
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/PS01_D2A_3_R1_Q30paired.fq.gz --right ../data/PS01_D2A_3_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_PS01_D2A_3 --output_prefix  pea_aphid_PS01_D2A_3
##                                                                                                                                                                                                                                                                                                                     
##                                                                                                                                                                                                                                                                                                                     
##                                                                                                                                                                                                                                                                                                                     
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/PS01_A17_2_R1_Q30paired.fq.gz --right ../data/PS01_A17_2_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_PS01_A17_2 --output_prefix  pea_aphid_PS01_A17_2
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/PS01_A17_1_R1_Q30paired.fq.gz --right ../data/PS01_A17_1_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_PS01_A17_1 --output_prefix  pea_aphid_PS01_A17_1
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/align_and_estimate_abundance.pl --transcripts good.good.Trinity-GG.fasta --seqType fq --left ../data/PS01_A17_3_R1_Q30paired.fq.gz --right ../data/PS01_A17_3_R2_Q30paired.fq.gz --est_method kallisto --SS_lib_type FR --thread_count 8 --trinity_mode --output_dir pea_aphid_PS01_A17_3 --output_prefix  pea_aphid_PS01_A17_3


# matrix
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/util/abundance_estimates_to_matrix.pl --est_method kallisto --cross_sample_norm TMM --name_sample_by_basedir ./pea_aphid_N116_D2A_1/abundance.tsv ./pea_aphid_N116_D2A_2/abundance.tsv ./pea_aphid_N116_D2A_3/abundance.tsv ./pea_aphid_PS01_A17_1/abundance.tsv ./pea_aphid_PS01_A17_2/abundance.tsv ./pea_aphid_PS01_A17_3/abundance.tsv ./pea_aphid_PS01_D2A_1/abundance.tsv ./pea_aphid_PS01_D2A_2/abundance.tsv ./pea_aphid_PS01_D2A_3/abundance.tsv ./pea_aphid_N116_A17_1/abundance.tsv ./pea_aphid_N116_A17_2/abundance.tsv ./pea_aphid_N116_A17_3/abundance.tsv --out_prefix Pea_aphid_GG_2016N116_PS01.matrix

# use biolinux
#/home/pt40963/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix counts.matrix --method edgeR --samples_file samples_described.txt

cd /mnt/shared/scratch/pt40963/Pea_aphid

python ~/Downloads/rnaQUAST-1.2.0/rnaQUAST.py -t 10 --blat -c good.good.Trinity-GG.fasta -sam Pea_strict_RNAseq_mappedAligned.out.sam -r Pea_aphid_genome_no_discriptions.fasta -gtf A.pisum.gtf -1 all_r1.fq.gz -2 all_r2.fq.gz -o pea_with_SAM_rnaQUAST_w_A.pisum.gtf
