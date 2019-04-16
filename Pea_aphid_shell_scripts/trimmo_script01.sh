#$ -l hostname="n13*"
#$ -cwd

cd /home/pt40963/Pea_aphid/RNAseq
#java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 4 -phred33 R1.fastq.gz R2.fastq.gz R1_paired.fq.gz R1_unpaired.fq.gz R2_paired.fq.gz R2_unpaired.fq.gz ILLUMINACLIP:/mnt/shared/projects/aphids/20151212_Host_nonhost_artificaial_RNAseq/shell_scripts_non_host/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 HEADCROP:9 SLIDINGWINDOW:4:20 MINLEN:36



java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 14 -phred33 all_R1.fq.gz all_R2.fq.gz all_r1_paired.fq.gz all_r1unpaired.fq.gz all_r2_paired.fq.gz all_r2unpaired.fq.gz ILLUMINACLIP:/mnt/shared/projects/aphids/20151212_Host_nonhost_artificaial_RNAseq/shell_scripts_non_host/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 HEADCROP:9 SLIDINGWINDOW:4:25 MINLEN:36
