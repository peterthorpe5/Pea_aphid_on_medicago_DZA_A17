#!/bin/bash
#$ -cwd
#$ -l hostname="n13*"

cd /mnt/shared/scratch/pt40963/Pea_aphid/clone_specific/


transrate --assembly Pea_PS01_N116_denovo.Trinity.fasta --left /mnt/shared/scratch/pt40963/Pea_aphid/R1.fq.gz --right /mnt/shared/scratch/pt40963/Pea_aphid/R2.fq.gz --threads 24
wait
cp ./transrate_results/Pea_PS01_N116_denovo.Trinity/good.Pea_PS01_N116_denovo.Trinity.fasta ./

transrate --assembly good.Pea_PS01_N116_denovo.Trinity.fasta --left /mnt/shared/scratch/pt40963/Pea_aphid/R1.fq.gz --right /mnt/shared/scratch/pt40963/Pea_aphid/R2.fq.gz --threads 24
wait
cp ./transrate_results/good.Pea_PS01_N116_denovo.Trinity/good.good.Pea_PS01_N116_denovo.Trinity.fasta ./


transcriptome="good.good.Pea_PS01_N116_denovo.Trinity.fasta"
# Transdecoder  - run example. line 348 has been altered in .predict to allow greater distances in the training. 
echo "1) running Transdecoder"
long_orf="/home/pt40963/scratch/Downloads/TransDecoder-master/TransDecoder.LongOrfs -t ${transcriptome}"
echo ${long_orf}
eval ${long_orf}
wait

#--adj_pct (default 15), in which case it'll examine the  max(30,  15/100 * orf_length)
echo "1b) running Transdecoder predict"
predict="/home/pt40963/scratch/Downloads/TransDecoder-master/TransDecoder.Predict --single_best_only -t ${transcriptome} --cpu 24"
echo ${predict}
eval ${predict}
wait


# for aphids
phylum_filter_out=6656
species_tx_id=7029
#  metazoan
tax_filter_up_to=33208 

cd /mnt/shared/scratch/pt40963/Pea_aphid/clone_specific/


echo "running diamond-BLAST against NR"
diam_p="/home/pt40963/scratch/Downloads/diamond-master/diamond blastp -p 24 --more-sensitive -e 0.00001 
	   -v -q good.good.Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pep
	   -d $HOME/scratch/blast_databases/nr.dmnd 
	   --outfmt 6 
	   --out good.good.Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pep_vs_nr.tab"
echo ${diam_p}
eval ${diam_p}
wait


echo "adding tx_id and descriptions to diamond-BLAST output"
tax="python $HOME/public_scripts/Diamond_BLAST_add_taxonomic_info/Diamond_blast_to_taxid.py
	-i good.good.Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pep_vs_nr.tab 
	-p $HOME/scratch/blast_databases 
	-o good.good.Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pepsta_vs_nr_tax2.tab"
echo ${tax}
eval ${tax}
wait



#Filter taxomony commands:
echo "filtering blast results"
filter_top_blasts="python $HOME/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py 
				  -i *_vs_nr_tax.tab 
				  -t 7029 
				  -p $HOME/scratch/blast_databases 
				  -o top_not_pea.hits"
echo ${filter_top_blasts}
eval ${filter_top_blasts}
wait

filter_species="python $HOME/public_scripts/blast_output/top_BLAST_hit_filter_out_tax_id.py 
			   -i *_vs_nr_tax.tab 
			   -t 6656
			   -p $HOME/scratch/blast_databases 
			   -o top_not_arthopoda.hits"
echo ${filter_species}
eval ${filter_species}
wait

echo "predicting HGT"
HGT="python $HOME/public_scripts/Lateral_gene_transfer_prediction_tool/Lateral_gene_transfer_predictor.py 
-i Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pepsta_vs_nr_tax2.tab 
--tax_filter_out 6656
-a 30
 --tax_filter_up_to 33208 
 -p $HOME/scratch/blast_databases -o LTG_results.out"
echo ${HGT}
eval ${HGT}
wait
#

echo "predicting HGT"
HGT_filter="python $HOME/public_scripts/Lateral_gene_transfer_prediction_tool/check_contaminants_on_contigs.py 
--LTG LTG_LGT_candifates.out --gff good.Trinity.fasta.transdecoder.gff3 
--dna good.Trinity.fasta.transdecoder.cds -g good.Trinity.fasta 
-r ./HGT/old/HGT_filtering/Trinity.fasta_quant.sf 
-o HGT_filtered_20170530.txt"
echo ${HGT_filter}
eval ${HGT_filter}
wait

echo ................................................................ im done
