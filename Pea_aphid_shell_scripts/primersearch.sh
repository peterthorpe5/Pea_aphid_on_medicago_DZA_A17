cd /storage/home/users/pjt6/pea_aphid/DNAseq

mismatches="0 5 7 10 15"
genomes=*.fasta


for m in ${mismatches}
do
    for g in ${genomes}
    do
	    cmd="primersearch -seqall ${g} 
		-infile primers.txt -mismatchpercent ${m} 
		-outfile primers_verus_${g}_MismatchesPercent_${m}.txt"
		echo ${cmd}
		eval ${cmd}
	done
done

