#data from http://www.ebi.ac.uk/ena/data/view/PRJNA209321

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924106/SRR924106_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924106/SRR924106_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924118/SRR924118_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924118/SRR924118_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924119/SRR924119_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924119/SRR924119_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924120/SRR924120_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924120/SRR924120_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924121/SRR924121_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924121/SRR924121_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924122/SRR924122_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR924/SRR924122/SRR924122_2.fastq.gz


# make the file for trimming

cat *_1.fastq.gz Pea_aphid_head_R1_paired.fq.gz > all_R1.fq.gz

cat *_2.fastq.gz Pea_aphid_head_R2_paired.fq.gz > all_R2.fq.gz

#trim the files

java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 8 -phred33 all_R1.fq.gz all_R2.fq.gz all_r1_paired.fq.gz all_r1unpaired.fq.gz all_r2_paired.fq.gz all_r2unpaired.fq.gz ILLUMINACLIP:/mnt/shared/projects/aphids/20151212_Host_nonhost_artificaial_RNAseq/shell_scripts_non_host/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 HEADCROP:9 SLIDINGWINDOW:4:25 MINLEN:36
