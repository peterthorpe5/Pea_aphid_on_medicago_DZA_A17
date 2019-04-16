#$ -l hostname="n13*"
#$ -cwd
cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/
	
fastqc *.fastq.gz