#$ -l hostname="n13*"
#$ -pe smp 8
#$ -cwd



#########################################################################################################################################################################################################################################
cd /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01
###Mc_braker_denovo.aa

diamond blastp -p 9 --sensitive -e 0.00001 -v -q Api_RNAseq_ass.fasta -d /mnt/shared/scratch/pt40963/blast_databases/nr.dmnd -a Api_RNAseq_ass.fasta_vs_nr.da

diamond view -a Api_RNAseq_ass.fasta*.daa -f tab -o Api_RNAseq_ass.fasta_vs_nr.tab

python ~/misc_python/diamond_blast_to_kingdom/Diamond_blast_to_taxid_add_kingdom_add_species_description.py -i Api_RNAseq_ass.fasta_vs_nr.tab -p /mnt/shared/scratch/pt40963/blast_databases -o Api_RNAseq_ass.fasta_vs_nr_tax.tab


python /home/pt40963/misc_python/Lateral_gene_transfer_prediction_tool/Lateral_gene_transfer_predictor.py -i *_vs_nr_tax.tab --tax_filter_out 6656 --tax_filter_up_to 33208 -p /mnt/shared/scratch/pt40963/blast_databases -o LTG_results.out

wait
#

#Filter taxomony commands:

python ~/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py -i *_vs_nr_tax.tab -t 7029 -p /mnt/shared/scratch/pt40963/blast_databases -o top_not_pea.hits

python ~/misc_python/BLAST_output_parsing/top_BLAST_hit_filter_out_tax_id.py -i *_vs_nr_tax.tab -t 6656 -p /mnt/shared/scratch/pt40963/blast_databases -o top_not_arhtorpoda.hits

wait

cat LTG_LGT_candifates.out | grep -v "Tribolium" > LTG_LGT_candifates.out2

wait

mv LTG_LGT_candifates.out2 LTG_LGT_candifates.out
