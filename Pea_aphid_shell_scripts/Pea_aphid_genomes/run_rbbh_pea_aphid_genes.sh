#!/usr/bin/env bash
#
# run_rbbh_blast.sh
#
# Short script to run example RBBH BLAST comparisons for UoD teaching course
# materials. Reciprocal BLASTP searches are run on three input protein 
# sequence sets.
#
# (c) The James Hutton Institute 2014
# Author: Leighton Pritchard
#set -e
# Define input files and input/output directories
#filenames="Macrosiphum_euphorbiae_Me.fasta Pea_aphid_aphidbase_2.1b_pep.fasta R_padi_transcriptome_fq_Trinity_name_changed.fasta.transdecoder.pep.fasta Mp_F_Trinti_nr_lowest_expre_rmvod_Transcriptome.fasta.transdecoder.pep.fasta Mp_J_Trinti_nr_lowest_expre_rmvod_Transcriptome.fasta.transdecoder.pep.fasta Mp_candidates_Bos_lab_march2014.fasta Mp_O_Trinti_nr_lowest_expre_rmvod_Transcriptome.fasta.transdecoder.pep.fasta dmel-all_final.fasta Mcerasi_Trinti_nr_lowest_expre_rmvod_Transcriptome.fasta.transdecoder.pep.fasta Soy_bean_Trinity_nr99.fasta.transdecoder.pep.fasta"
#repeat without drosophila. This breaks
cd /home/pt40963/scratch/pea_aphid_genomes/clustering/RBBH


python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o A.pisum.AA.annotated.fasta_vs_APISUM_PS01.gene.AA.annotated.fasta.tab A.pisum.AA.annotated.fasta APISUM_PS01.gene.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o A.pisum.AA.annotated.fasta_vs_APISUM_N116.gene.AA.annotated.fasta.tab A.pisum.AA.annotated.fasta APISUM_N116.gene.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o A.pisum.AA.annotated.fasta_vs_Pea_aphid_protein2.1.fasta.tab A.pisum.AA.annotated.fasta Pea_aphid_protein2.1.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o APISUM_PS01.gene.AA.annotated.fasta_vs_A.pisum.AA.annotated.fasta.tab APISUM_PS01.gene.AA.annotated.fasta A.pisum.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o APISUM_PS01.gene.AA.annotated.fasta_vs_APISUM_N116.gene.AA.annotated.fasta.tab APISUM_PS01.gene.AA.annotated.fasta APISUM_N116.gene.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o APISUM_PS01.gene.AA.annotated.fasta_vs_Pea_aphid_protein2.1.fasta.tab APISUM_PS01.gene.AA.annotated.fasta Pea_aphid_protein2.1.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o APISUM_N116.gene.AA.annotated.fasta_vs_A.pisum.AA.annotated.fasta.tab APISUM_N116.gene.AA.annotated.fasta A.pisum.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o APISUM_N116.gene.AA.annotated.fasta_vs_APISUM_PS01.gene.AA.annotated.fasta.tab APISUM_N116.gene.AA.annotated.fasta APISUM_PS01.gene.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o APISUM_N116.gene.AA.annotated.fasta_vs_Pea_aphid_protein2.1.fasta.tab APISUM_N116.gene.AA.annotated.fasta Pea_aphid_protein2.1.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o Pea_aphid_protein2.1.fasta_vs_A.pisum.AA.annotated.fasta.tab Pea_aphid_protein2.1.fasta A.pisum.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o Pea_aphid_protein2.1.fasta_vs_APISUM_PS01.gene.AA.annotated.fasta.tab Pea_aphid_protein2.1.fasta APISUM_PS01.gene.AA.annotated.fasta

python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py -a prot -t blastp --threads 8 -o Pea_aphid_protein2.1.fasta_vs_APISUM_N116.gene.AA.annotated.fasta.tab Pea_aphid_protein2.1.fasta APISUM_N116.gene.AA.annotated.fasta




















filenames="A.pisum.AA.annotated.fasta APISUM_PS01.gene.AA.annotated.fasta APISUM_N116.gene.AA.annotated.fasta Pea_aphid_protein2.1.fasta"

indir="/home/pt40963/scratch/pea_aphid_genomes/clustering/RBBH"
outdir="/home/pt40963/scratch/pea_aphid_genomes/clustering/RBBH/data"

# Make the output directory, if needed
mkdir -p ${outdir}

# Make BLAST databases
#echo "Making databases"
#for f in ${filenames}
#do
#    cmd="makeblastdb -in ${indir}/${f} -dbtype prot --threads 8 -out ${outdir}/${f}"
#    echo ${cmd}
#    eval ${cmd}
#	wait
#done

# Loop over files and run python script on all pairs of files in all combinations

# Tell the Python script to use 4 threads
export GALAXY_SLOTS=8
for f in ${filenames}
do
    for g in ${filenames}
    do
	if [ "${f}" != "${g}" ]; then
	    echo "Running python ${f} _vs ${g}"
	    #cmd="time blastp -query ${indir}/${f} -db ${outdir}/${g} --threads 8 -outfmt \"6 qseqid sseqid qlen slen length nident pident evalue bitscore\" --threads 8 -out ${outdir}/${f%.faa}__vs_${g%.faa}.tab -evalue 0.00001 -num_threads 16"
		cmd="python /home/pt40963/Methods_M.cerasi_R.padi_genome_assembly/python_scripts/Blast_RBH_two_fasta_file_evalue.py 
		-a prot -t blastp 
		--threads 8 -o ${outdir}/${f}__vs_${g}.tab 
		${indir}/${f} ${indir}/${g}"
	    echo ${cmd}
	    eval ${cmd}
		wait
done

