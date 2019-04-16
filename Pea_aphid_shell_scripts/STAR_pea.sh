
#$ -cwd
cd  /storage/home/users/pjt6/pea_aphid
#rm -rf star_indicies
#mkdir star_indicies

#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR  --runMode genomeGenerate --runThreadN 8 --genomeDir ./star_indicies \
--genomeFastaFiles Pea_aphid_genome_no_discriptions.fasta

#cat *1.fastq.gz *_R1_Q30paired.fq.gz > R1.fq.gz
#cat *2.fastq.gz *_R2_Q30paired.fq.gz > R2.fq.gz

 
#map the RNAseq

/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
--outFilterMultimapNmax 3 --outFileNamePrefix A.pisum. --readFilesIn R1.fq.gz R2.fq.gz


#/home/pt40963/Downloads/augustus-3.0.3/bin/bam2hints --intronsonly --in=Pea_strict_RNAseq_mappedAligned.sortedByCoord.out.bam --out=pea_strict_hints.intron.allRNAseq.gff
wait
#
#samtools mpileup Pea_strict_RNAseq_mappedAligned.sortedByCoord.out.bam | perl -ne 'BEGIN{print "track type=wiggle_0 name=fileName description=fileName\n"};($c, $start, undef, $depth) = split; if ($c ne $lastC) { print "variableStep chrom=$c\n"; };$lastC=$c;next unless $. % 10 ==0;print "$start\t$depth\n" unless $depth<3;'  > fileName.wig
wait
#cat *.wig | /home/pt40963/Downloads/augustus-3.0.3/scripts/wig2hints.pl --width=40 --margin=20 --minthresh=2 --minscore=4 --src=W --type=ep --radius=4.5 > pea_strict_hints.allrnaseq.ep.gff
#
#





