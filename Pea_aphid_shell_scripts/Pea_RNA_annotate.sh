#$ -l hostname="n13*"
#$ -pe smp 8

cd /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01

# 				transdecoder picking the cds, guided by swiss prot and pfam domains

#/home/pt40963/Downloads/TransDecoder-2.0.1/TransDecoder.LongOrfs -t /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01/Api_RNAseq_ass.fasta 
#
#blastp -query /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01/Api_RNAseq_ass.fasta.transdecoder_dir/longest_orfs.pep  -db /home/pt40963/Downloads/TransDecoder-2.0.1/uniprot_sprot.fasta  -max_target_seqs 1 -outfmt 6 -evalue 1e-5 -num_threads 10 > blastp.outfmt6
#
#hmmscan --cpu 12 --domtblout pfam.domtblout /home/pt40963/Downloads/TransDecoder_r20131117/pfam/Pfam-AB.hmm.bin /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01/Api_RNAseq_ass.fasta.transdecoder_dir/longest_orfs.pep
#
#/home/pt40963/Downloads/TransDecoder-2.0.1/TransDecoder.Predict -t /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01/Api_RNAseq_ass.fasta --retain_pfam_hits pfam.domtblout --retain_blastp_hits blastp.outfmt6




#################################################################################################################################################################################################
# To get the corresposnding "putative effectors.
# make blastdb
makeblastdb -in Api_RNAseq_ass.fasta.transdecoder.pep -dbtype prot

#blast to xml
blastp -db Api_RNAseq_ass.fasta.transdecoder.pep -query /home/pt40963/gene_model_testing/Mp_candidates_Bos_lab_march2014.fasta -evalue 0.00001 -seg no -num_threads 12 -outfmt 5 -out Api_RNAseq_ass.fa_vs_bos2010.xml

#blast 2 tab
mv Bos2010 ./Bos2010_all_hits_2
blastp -db Api_RNAseq_ass.fasta.transdecoder.pep -query /home/pt40963/gene_model_testing/Mp_candidates_Bos_lab_march2014.fasta -evalue 1e-10 -seg no -num_threads 12 -max_target_seqs 1 -outfmt 7 -out Api_RNAseq_ass.fa_vs_bos2010.tab

# convert the xml
python /home/pt40963/gene_model_testing/BLAST_parser_return_hits_NAME_only.py -i Api_RNAseq_ass.fa_vs_bos2010.xml -o Api_RNAseq_ass.fa_vs_bos2010.xml.condensed.out

# get the matches seq for the tab blast to the effectors
python /home/pt40963/gene_model_testing/Get_effector_seq_using_SeqIO_dic.py -b Api_RNAseq_ass.fa_vs_bos2010.tab -p Api_RNAseq_ass.fasta.transdecoder.pep -n Api_RNAseq_ass.fasta.transdecoder.pep

cd ./Bos2010
#
#
filenames=*.fasta
#
for f in ${filenames}
do
	echo "Running muscle ${f}"
	cmd="/home/pt40963/Downloads/muscle3.8.31_i86linux64 -in ${f} -out ${f}_aligned.fasta -maxiters 5000 -maxtrees 15" 
	echo ${cmd}
	eval ${cmd}
	wait
done

filenames2=*_aligned.fasta
for file in ${filenames2}
do
	echo "Running muscle ${f}"
	cmd="/home/pt40963/Downloads/muscle3.8.31_i86linux64 -in ${file} -out ${file}_refine.fasta -refine" 
	echo ${cmd}
	eval ${cmd}
	wait
done
	
rm *_aligned.fasta

mkdir alignments
mv *_refine.fasta ./alignments
	
#cd ..

cd /home/pt40963/scratch/Pea_aphid/trinity_Pea_N116_PS01
echo ................................................................ im done
#
############################################################################################################################################################################

# Annotation for trinotate:
########################################################################################################################################################
#				for trinnotate
#	pfam domains
hmmscan --cpu 8 --domtblout TrinotatePFAM.out /home/pt40963/Downloads/TransDecoder_r20131117/pfam/Pfam-AB.hmm.bin Api_RNAseq_ass.fasta.transdecoder.pep > pfam_pep.log

mkdir for_trinnotate
#		swissprot
#blastx -query M.cerasi.V1.nt.fasta-db /home/pt40963/Downloads/Trinotate-2.0.2/uniprot_sprot.fasta -num_threads 4 -max_target_seqs 1 -outfmt 6 > blastx_trin.outfmt6

diamond blastx -k 1 -p 8 --sensitive -v -q M.cerasi.V1.nt.fasta -d /home/pt40963/Downloads/Trinotate-2.0.2/swiss_prot.dmnd -a Mc.genes.blastx.unipot.DIAMOND002.diamond
diamond view -a Mc.genes.blastx.unipot.DIAMOND002.*.daa -f tab -o ./for_trinnotate/blastx_trin_uniprot.outfmt6


#blastp -query Api_RNAseq_ass.fasta.transdecoder.pep -db /home/pt40963/Downloads/Trinotate-2.0.2/uniprot_sprot.fasta -num_threads 4 -max_target_seqs 1 -outfmt 6 > blastp_trin.outfmt6
diamond blastp -k 1 -p 8 --sensitive -v -q Api_RNAseq_ass.fasta.transdecoder.pep -d /home/pt40963/Downloads/Trinotate-2.0.2/swiss_prot.dmnd -a Mc.genes.blastp.unipot.DIAMOND002.diamond
diamond view -a Mc.genes.blastp.unipot.DIAMOND002.*.daa -f tab -o ./for_trinnotate/blastp_trin_uniprot.outfmt6


#		uniref  (uniref90.dmnd)

#blastx -query M.cerasi.V1.nt.fasta -db /home/pt40963/Downloads/Trinotate-2.0.2/uniprot_uniref90.trinotate.pep -num_threads 4 -max_target_seqs 1 -outfmt 6 > uniref90.blastx.outfmt6
diamond blastx -k 1 -p 6 --sensitive -v -q M.cerasi.V1.nt.fasta -d /home/pt40963/Downloads/Trinotate-2.0.2/uniref.dmnd -a Mc.genes.blastx.uniref90.dmnd.DIAMOND003.diamond
diamond view -a Mc.genes.blastx.uniref90.dmnd.DIAMOND003.*.daa -f tab -o ./for_trinnotate/uniref90.blastx.outfmt6


#blastp -query Api_RNAseq_ass.fasta.transdecoder.pep -db /home/pt40963/Downloads/Trinotate-2.0.2/uniprot_uniref90.trinotate.pep -num_threads 4 -max_target_seqs 1 -outfmt 6 > uniref90.blastp.outfmt6
diamond blastp -k 1 -p 6 --sensitive -v -q Api_RNAseq_ass.fasta.transdecoder.pep -d /home/pt40963/Downloads/Trinotate-2.0.2/uniref.dmnd -a Mc.genes.blastp.uniref90.dmnd.DIAMOND003.diamond
diamond view -a Mc.genes.blastp.uniref90.dmnd.DIAMOND003.*.daa -f tab -o ./for_trinnotate/uniref90.blastp.outfmt6

# 		generate the trans to genes map
#/home/pt40963/Downloads/trinityrnaseq_r20140717/util/support_scripts/get_Trinity_gene_to_trans_map.pl home/pt40963/Mcerasi_wild_samples/RNAseq_final_GG_v1/Mcerasi_GG_assembly/M.cerasi.V1.nt.fasta > ./for_trinnotate/Trinity.fasta.gene_trans_map



#
#		Running signalP to predict signal peptides
signalp -f short -n ./for_trinnotate/signalp.out Api_RNAseq_ass.fasta.transdecoder.pep 
#wait

#		Running tmHMM to predict transmembrane regions
tmhmm --short < Api_RNAseq_ass.fasta.transdecoder.pep > ./for_trinnotate/tmhmm.out
#wait
#		Running RNAMMER to identify rRNA transcripts

# BUSCO 
#mkdir LINEAGE
#ln -s ~/Downloads/BUSCO_v1.1b1/arthropoda ./LINEAGE/
#python3 /home/pt40963/Downloads/BUSCO_v1.1b1/BUSCO_v1.1b1.py -in M.cerasi.V1.nt.fasta -l ./LINEAGE/arthropoda -o M.cerasi.V1.nt.fasta.busco -m transcriptome -f -Z 427000000 --long --cpu 6 --species pea_aphid
#

###########################################################################################################################################################################
# BIOLINUX only

#/home/peter/Downloads/Trinotate_r20131110/util/rnammer_support/RnammerTranscriptome.pl --transcriptome Rpadi_RNAseq_ass.fa --path_to_rnammer /home/peter/Downloads/rnammer

#wait




######################################################################################################################################################################################

#		TRINNOTATE

#wget "ftp://ftp.broadinstitute.org/pub/Trinity/Trinotate_v2.0_RESOURCES/Trinotate.sprot_uniref90.20150131.boilerplate.sqlite.gz" -O Trinotate.sqlite.gz



#gunzip Trinotate.sqlite.gz



# load protein hits
#Trinotate Trinotate.sqlite LOAD_swissprot_blastp blastp_trin.outfmt6

# load transcript hits
#Trinotate Trinotate.sqlite LOAD_swissprot_blastx blastx_trin.outfmt6

#Optional: load Uniref90 blast hits (requires the more comprehensive boilerplate database, as described above):

# load protein hits
#Trinotate Trinotate.sqlite LOAD_trembl_blastp uniref90.blastp.outfmt6

# load transcript hits
#Trinotate Trinotate.sqlite LOAD_trembl_blastx uniref90.blastx.outfmt6



#Trinotate Trinotate.sqlite LOAD_pfam TrinotatePFAM.out



#Trinotate Trinotate.sqlite LOAD_tmhmm tmhmm.out



#Trinotate Trinotate.sqlite LOAD_signalp signalp.out


#Trinotate Trinotate.sqlite report -E 1-10 > Mc.genes_trinotate_annotation_report.xls


#########################################################################################################
##### shell script to annotate  using pfamAB domains swiss prot and uniref90	######################################
######################################################################################################

#wait

