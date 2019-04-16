#$ -cwd


cd /home/pt40963/scratch/pea_aphid_genomes/PS01
sleep 1800

python3 ~/misc_python/NGS/fastq_to_sam.py bait_match_bait_match_R1.fastq bait_match_bait_match_R2.fastq | samtools view -S -b - > reads.bam
wait

/mnt/apps/discovar/discovar_denovo/150826/bin/DiscovarDeNovo NUM_THREADS=14 READS=/home/pt40963/scratch/pea_aphid_genomes/PS01/reads.bam OUT_DIR=/home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_discovar/




