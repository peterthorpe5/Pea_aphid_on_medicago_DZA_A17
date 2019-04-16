#$ -l hostname="n13*"
#$ -cwd
cd /mnt/shared/projects/aphids/20171103_Pea_aphid_PS01_DZA_RNAseq/11057_Bos_Jorunn/raw_data/all_reads
	
	
cd ./avr-rep1
fasqc *fastq.gz
cd ../

cd ./avr-rep3
fasqc *fastq.gz
cd ../

cd ./avr-rep5
fasqc *fastq.gz
cd ../

cd ./N116-rep2
fasqc *fastq.gz
cd ../

cd ./N116-rep4
fasqc *fastq.gz
cd ../

cd ./PSO1-rep1
fasqc *fastq.gz
cd ../

cd ./PSO1-rep3
fasqc *fastq.gz
cd ../

cd ./PSO1-rep5
fasqc *fastq.gz
cd ../

cd ./vir-rep2
fasqc *fastq.gz
cd ../

cd ./vir-rep4
fasqc *fastq.gz
cd ../

cd ./avr-rep2
fasqc *fastq.gz
cd ../

cd ./avr-rep4
fasqc *fastq.gz
cd ../

cd ./N116-rep1
fasqc *fastq.gz
cd ../

cd ./N116-rep3
fasqc *fastq.gz
cd ../

cd ./N116-rep5
fasqc *fastq.gz
cd ../

cd ./PSO1-rep2
fasqc *fastq.gz
cd ../

cd ./PSO1-rep4
fasqc *fastq.gz
cd ../

cd ./vir-rep1
fasqc *fastq.gz
cd ../

cd ./vir-rep3
fasqc *fastq.gz
cd ../

cd ./vir-rep5
fasqc *fastq.gz
cd ../
