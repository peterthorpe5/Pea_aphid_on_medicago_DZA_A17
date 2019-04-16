#$ -l hostname="n13*"
#$ -cwd

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/N116-rep4/
java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 16 -phred33 /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads/N116-rep4/171023_K00166_0291_AHM2WGBBXX_8_TP-D7-003_TP-D5-004_1.fastq.gz /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads/N116-rep4/171023_K00166_0291_AHM2WGBBXX_8_TP-D7-003_TP-D5-004_2.fastq.gz N116-rep4_171023_K00166_0291_AHM2WGBBXX_8_TP-D7-003_TP-D5-004_R1_paired.fq.gz N116-rep4_171023_K00166_0291_AHM2WGBBXX_8_TP-D7-003_TP-D5-004_R1_unpaired.fq.gz N116-rep4_171023_K00166_0291_AHM2WGBBXX_8_TP-D7-003_TP-D5-004_R2_paired.fq.gz N116-rep4_171023_K00166_0291_AHM2WGBBXX_8_TP-D7-003_TP-D5-004_R2_unpaired.fq.gz ILLUMINACLIP:$HOME/TruSeq3-PE.fa:2:15:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:55

echo "...........done 1 trimmming jobs"

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/N116-rep4/
java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 16 -phred33 /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads/N116-rep4/171027_K00300_0059_BHM375BBXX_2_TP-D7-003_TP-D5-004_1.fastq.gz /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads/N116-rep4/171027_K00300_0059_BHM375BBXX_2_TP-D7-003_TP-D5-004_2.fastq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_2_TP-D7-003_TP-D5-004_R1_paired.fq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_2_TP-D7-003_TP-D5-004_R1_unpaired.fq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_2_TP-D7-003_TP-D5-004_R2_paired.fq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_2_TP-D7-003_TP-D5-004_R2_unpaired.fq.gz ILLUMINACLIP:$HOME/TruSeq3-PE.fa:2:15:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:55

echo "...........done 2 trimmming jobs"

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/N116-rep4/
java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 16 -phred33 /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads/N116-rep4/171027_K00300_0059_BHM375BBXX_1_TP-D7-003_TP-D5-004_1.fastq.gz /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads/N116-rep4/171027_K00300_0059_BHM375BBXX_1_TP-D7-003_TP-D5-004_2.fastq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_1_TP-D7-003_TP-D5-004_R1_paired.fq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_1_TP-D7-003_TP-D5-004_R1_unpaired.fq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_1_TP-D7-003_TP-D5-004_R2_paired.fq.gz N116-rep4_171027_K00300_0059_BHM375BBXX_1_TP-D7-003_TP-D5-004_R2_unpaired.fq.gz ILLUMINACLIP:$HOME/TruSeq3-PE.fa:2:15:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:55

echo "...........done 3 trimmming jobs"
