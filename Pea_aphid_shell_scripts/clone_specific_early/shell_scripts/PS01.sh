#!/bin/bash
#$ -cwd
#$ -l hostname="n13*"



cd /mnt/shared/scratch/pt40963/Pea_aphid/clone_specific/ps01

#/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Trinity --seqType fq --max_memory 240G --left /mnt/shared/scratch/pt40963/Pea_aphid/data/PS01_R1_Q30paired.fq.gz --right /mnt/shared/scratch/pt40963/Pea_aphid/data/PS01_R2_Q30paired.fq.gz --SS_lib_type FR --CPU 16 --output trinity_Pea_denovo  --full_cleanup


transrate --assembly good.trinity_Pea_PS01_denovo.Trinity.fasta --left /mnt/shared/scratch/pt40963/Pea_aphid/data/PS01_R1_Q30paired.fq.gz --right /mnt/shared/scratch/pt40963/Pea_aphid/data/PS01_R2_Q30paired.fq.gz --threads 4

transcriptome="good.good.trinity_Pea_PS01_denovo.Trinity.fasta"
# Transdecoder  - run example. line 348 has been altered in .predict to allow greater distances in the training. 
echo "1) running Transdecoder"
long_orf="/home/pt40963/scratch/Downloads/TransDecoder-master/TransDecoder.LongOrfs -t ${transcriptome}"
echo ${long_orf}
eval ${long_orf}
wait

#--adj_pct (default 15), in which case it'll examine the  max(30,  15/100 * orf_length)
echo "1b) running Transdecoder predict"
predict="/home/pt40963/scratch/Downloads/TransDecoder-master/TransDecoder.Predict --single_best_only -t ${transcriptome} --cpu 4"
echo ${predict}
eval ${predict}
wait