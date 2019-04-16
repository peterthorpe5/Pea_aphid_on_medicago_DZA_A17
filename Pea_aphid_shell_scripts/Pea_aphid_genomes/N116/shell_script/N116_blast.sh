#!/bin/bash
#$ -cwd
#Abort on any error,
#set -e

# for aphids
phylum_filter_out=6656
species_tx_id=7029
#  metazoan
tax_filter_up_to=33208 




cd /home/pt40963/scratch/pea_aphid_genomes/N116


#python /home/pt40963/public_scripts/gene_model_testing/re_name_genes.py --gff pgona_P.cinimoni_20102017_brake1.9_complete.gff --prefix PHGONA -o PHGONA
 
#/home/pt40963/scratch/Downloads/gffread/gffread PHGONA.gff -g ../P.gon.genome.v1.fasta -x Pgona.v1.gene.nt.fasta -y APISUM_N116.gene.AA.fasta

wait
  
#sed -i -e 's/[.]//g' APISUM_N116.gene.AA.fasta

wait
 

echo "running diamond-BLAST against NR"
diam_p="/home/pt40963/scratch/Downloads/diamond-master/diamond blastp -p 24 --more-sensitive -e 0.00001 
	   -v -q APISUM_N116.gene.AA.fasta
	   -d $HOME/scratch/blast_databases/nr.dmnd 
	   --outfmt 6 
	   --out APISUM_N116.gene.AA.fasta_vs_nr.tab"
echo ${diam_p}
#eval ${diam_p}
wait

# --taxonmap $HOME/scratch/blast_databases/prot.accession2taxid.gz	
echo "running diamond-BLAST against NR"
diam_p="/home/pt40963/scratch/Downloads/diamond-master/diamond blastp 
		-p 12 --more-sensitive -e 0.00001 
	   -q APISUM_N116.gene.AA.fasta
	   -d $HOME/scratch/blast_databases/nr.dmnd 
	   --outfmt 5 --salltitles
	   --out APISUM_N116.gene.AA.fasta_vs_nr.xml"
echo ${diam_p}
eval ${diam_p}
wait


echo "adding tx_id and descriptions to diamond-BLAST output"
tax="python $HOME/public_scripts/Diamond_BLAST_add_taxonomic_info/Diamond_blast_to_taxid.py
	-i APISUM_N116.gene.AA.fasta_vs_nr.tab 
	-p $HOME/scratch/blast_databases 
	-o APISUM_N116.gene.AA.fasta_vs_nr_tax.tab"
echo ${tax}
#eval ${tax}
wait



#Filter taxomony commands:
echo "filtering blast results"
filter_top_blasts="python $HOME/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py 
				  -i *_vs_nr_tax.tab 
				  -t 7029 
				  -p $HOME/scratch/blast_databases 
				  -o top_not_pea_aphid.hits"
echo ${filter_top_blasts}
#eval ${filter_top_blasts}
wait

filter_species="python $HOME/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py 
			   -i *_vs_nr_tax.tab 
			   -t 6656
			   -p $HOME/scratch/blast_databases 
			   -o top_not_arthropoda.hits"
echo ${filter_species}
#eval ${filter_species}
wait

echo "predicting HGT"
HGT="python $HOME/public_scripts/Lateral_gene_transfer_prediction_tool/Lateral_gene_transfer_predictor.py
 -i APISUM_N116.gene.AA.fasta_vs_nr_tax.tab 
 --tax_filter_out 6656 --tax_filter_up_to 33208 
 -a 30
 -p $HOME/scratch/blast_databases -o LTG_results.out"
echo ${HGT}
#eval ${HGT}
wait
#

echo "predicting HGT"
HGT_filter="python $HOME/public_scripts/Lateral_gene_transfer_prediction_tool/check_contaminants_on_contigs.py 
--LTG LTG_LGT_candifates.out --gff PALNI.gff 
--dna good.Trinity.fasta.transdecoder.cds -g Palni.v1.genome.fasta 
-r ./HGT/old/HGT_filtering/Trinity.fasta_quant.sf 
-o HGT_filtered_20170530.txt"
##echo ${HGT_filter}
#eval ${HGT_filter}
wait

echo ................................................................ im done
