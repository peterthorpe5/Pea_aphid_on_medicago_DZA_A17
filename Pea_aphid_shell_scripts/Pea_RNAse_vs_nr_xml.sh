#$ -l hostname="n13*"

cd /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01/split_fasta_files

export BLASTDB=/mnt/scratch/local/blast/ncbi

filenames=*.fasta


for f in ${filenames}
do
	cmd="blastx -db nr -query ${f} -evalue 0.00001 -seg no -num_threads 16 -outfmt 5 -out ${f}.xml" 
	echo ${cmd}
	eval ${cmd}
	wait
	done


#echo ................................................................ im done
#blastp -db nr -query to_blast.fasta -evalue 0.00001 -seg no -num_threads 10 -outfmt 5 -out to_blast.fasta_vs_NR.xml

#echo ................................................................ im done
