
cd /home/peter/Desktop/pea_aphid_genes
# NOTE: name the .abc file all_vs_all.abc, or chnage it in this shell script

# cat *.fasta > all.fa
# mk the blast db
#makeblastdb -in P.rubi_P.fragariae_RXLR.fasta -dbtype prot

#/home/pt40963/scratch/Downloads/diamond-master/diamond makedb --in all.fa -d all

# run the blast
# can use Diamond!!!
#blastp -db P.rubi_P.fragariae_RXLR.fasta -query P.rubi_P.fragariae_RXLR.fasta -num_threads 8 -seg no -outfmt 6 -evalue 1e-3 -out blast.tab


echo "running diamond-BLAST against NR"
#diam_p="/home/pt40963/scratch/Downloads/diamond-master/diamond blastp -p 10 --more-sensitive -e 0.001 -q all.fa -d all.dmnd --outfmt 6 --out Pea_gene1e_3.tab"
#echo ${diam_p}
#eval ${diam_p}

# make abc file

#cut -f1,2,11 Pea_gene1e_3.tab > all_vs_all.abc



echo "2) filtering BLAST output"
# run the five prime fixer with diff std thresholds
#values="3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18"

values="3 4 5 6 7 8"
for v in ${values}
do
	echo "2) filtering BLAST at ${v}"
	# filter the blast results
	filter_blast="python Remove_low_quality_blast_matches.py 
				  all_vs_all.abc all_results_eval_1e-${v}.abc 
				  1e-${v}" 
	echo ${filter_blast}
	eval ${filter_blast}
	wait
done

# deliberately putting this is a separted loop!!!!
for v in ${values}
do
	echo "3) mcxload"
	# run the five prime fixer tool
	mcxload_cmd="mcxload 
	-abc all_results_eval_1e-${v}.abc 
	--stream-mirror 
	--stream-neg-log10 
	-stream-tf 'ceil(200)' 
	-o all_results_eval_1e-${v}.mci 
	-write-tab 
	all_results_eval_1e-${v}.abc.tab" 
	echo ${mcxload_cmd}
	eval ${mcxload_cmd}
	wait
done


# deliberately putting this is a separted loop!!!!
for v in ${values}
do
	echo "4) mcxload"
	# run
	mcl_cmd="mcl 
	all_results_eval_1e-${v}.mci 
	-I 3 
	-use-tab all_results_eval_1e-${v}.abc.tab 
	-o all_results_eval_1e-${v}.abc_seq.mci" 
	echo ${mcl_cmd}
	eval ${mcl_cmd}
	wait
done

# deliberately putting this is a separted loop!!!!
for v in ${values}
do
	echo "5) running MCL"
	# run the five prime fixer tool
	mcl_cmd="mcl 
	all_results_eval_1e-${v}.mci 
	-I 3 
	-use-tab all_results_eval_1e-${v}.abc.tab 
	-o all_results_eval_1e-${v}.abc_seq.mci" 
	echo ${mcl_cmd}
	eval ${mcl_cmd}
	wait
done



# deliberately putting this is a separted loop!!!!
for v in ${values}
do
	echo "6) writing graph"
	# run the five prime fixer tool
	mcl_cmd="mcl all_results_eval_1e-${v}.mci 
	--d 
	-write-graphx 
	all_results_eval_1e-${v}.mci_Outputgraph.txt 
	-I 3" 
	echo ${mcl_cmd}
	eval ${mcl_cmd}
	wait
done


# deliberately putting this is a separted loop!!!!
for v in ${values}
do
	echo "7) mcl dump"
	# run the five prime fixer tool
	mcl_cmd="mcxdump 
	-icl out.all_results_eval_1e-${v}.mci.I30 
	-tabr all_results_eval_1e-${v}.abc.tab 
	-o all_results_eval_1e-${v}.mci.I30" 
	echo ${mcl_cmd}
	eval ${mcl_cmd}
	wait
done

# deliberately putting this is a separted loop!!!!
for v in ${values}
do
	# run the five prime fixer tool
	cluster_species_count_cmd="python mcl_to_cafe.py 
	-i all_results_eval_1e-${v}.abc_seq.mci
	-sp 'APISUM_N116 APISUM_PS01 Api ACYPI'
	-o all_results_eval_1e-${v}.SPECIES"
	echo ${cluster_species_count_cmd}
	eval ${cluster_species_count_cmd}
	wait
done

# so cluster stability can be assessed! Paste results into Excel file
#python Count_number_size_clusters.py
