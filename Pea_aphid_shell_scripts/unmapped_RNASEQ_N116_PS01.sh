#!/bin/bash
#$ -cwd
#$ -l hostname="n13*"

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/

#cat *Unmapped.out.mate1 > unmapped_R1.fq
#cat *Unmapped.out.mate2 > unmapped_R2.fq
#sed -i -e 's/        00/ 2:N:0:/g' unmapped_R2.fq

#sed -i -e 's/        00/ 1:N:0:/g' unmapped_R1.fq
java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 8 -phred33 unmapped_fixed.R1.fq unmapped_fixed.R2.fq unmapped_R1_paired.fq.gz unmapped_R1_unpaired.fq.gz unmapped_R2_paired.fq.gz unmapped_R2_unpaired.fq.gz ILLUMINACLIP:$HOME/TruSeq3-PE.fa:2:15:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:55

wait
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Trinity --seqType fq --max_memory 230G --left unmapped_R1_paired.fq.gz --right unmapped_R2_paired.fq.gz  --SS_lib_type FR --CPU 8 --output trinity_unmapped_denovo --full_cleanup

wait
cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trinity_unmapped_denovo


transrate --assembly trinity_unmapped_denovo.Trinity.fasta --left unmapped_R1_paired.fq.gz --right unmapped_R2_paired.fq.gz --threads 8
wait
cp ./transrate_results/trinity_unmapped_denovo.Trinity/good.trinity_unmapped_denovo.Trinity.fasta ./

transrate --assembly good.trinity_unmapped_denovo.Trinity.fasta --left unmapped_R1_paired.fq.gz --right unmapped_R2_paired.fq.gz --threads 8
wait
cp ./transrate_results/good.trinity_unmapped_denovo.Trinity/good.good.trinity_unmapped_denovo.Trinity.fasta ./


transcriptome="good.good.trinity_unmapped_denovo.Trinity.fasta"
# Transdecoder  - run example. line 348 has been altered in .predict to allow greater distances in the training. 
echo "1) running Transdecoder"
long_orf="/home/pt40963/scratch/Downloads/TransDecoder-master/TransDecoder.LongOrfs -t ${transcriptome}"
echo ${long_orf}
eval ${long_orf}
wait

#--adj_pct (default 15), in which case it'll examine the  max(30,  15/100 * orf_length)
echo "1b) running Transdecoder predict"
predict="/home/pt40963/scratch/Downloads/TransDecoder-master/TransDecoder.Predict --single_best_only -t ${transcriptome} --cpu 8"
echo ${predict}
eval ${predict}
wait


# for aphids
phylum_filter_out=6656
species_tx_id=7029
#  metazoan
tax_filter_up_to=33208 

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/


echo "running diamond-BLAST against NR"
diam_p="/home/pt40963/scratch/Downloads/diamond-master/diamond blastp -p 8 --more-sensitive -e 0.00001 
	   -v -q good.good.trinity_unmapped_denovo.Trinity.fasta.transdecoder.pep
	   -d $HOME/scratch/blast_databases/nr.dmnd 
	   --outfmt 6 
	   --out good.good.trinity_unmapped_denovo.Trinity.fasta.transdecoder.pep_vs_nr.tab"
echo ${diam_p}
eval ${diam_p}
wait


echo "adding tx_id and descriptions to diamond-BLAST output"
tax="python $HOME/public_scripts/Diamond_BLAST_add_taxonomic_info/Diamond_blast_to_taxid.py
	-i good.good.trinity_unmapped_denovo.Trinity.fasta.transdecoder.pep_vs_nr.tab 
	-p $HOME/scratch/blast_databases 
	-o good.good.trinity_unmapped_denovo.Trinity.fasta.transdecoder.pepsta_vs_nr_tax2.tab"
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
-i trinity_unmapped_denovo.Trinity.fasta.transdecoder.pepsta_vs_nr_tax2.tab 
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
