
#$ -cwd
cd  /storage/home/users/pjt6/pea_aphid
#rm -rf star_indicies
#mkdir star_indicies

#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR  --runMode genomeGenerate --runThreadN 8 --genomeDir ./star_indicies \
--genomeFastaFiles Pea_aphid_genome_no_discriptions.fasta

#cat *1.fastq.gz *_R1_Q30paired.fq.gz > R1.fq.gz
#cat *2.fastq.gz *_R2_Q30paired.fq.gz > R2.fq.gz
module load samtools
 
#map the RNAseq

#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
--outFilterMultimapNmax 3 --outFileNamePrefix A.pisum. --readFilesIn R1.fq.gz R2.fq.gz

# _1.fastq.gz

# N116
#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
#--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
#--outFilterMultimapNmax 3 --outFileNamePrefix N116. --readFilesIn ./n116/*_1.fastq.gz ./n116/*_2.fastq.gz
#
## ps01
/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
--limitBAMsortRAM 90554136874 --runThreadN 16   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
--outFilterMultimapNmax 3 --outFileNamePrefix PS01. --readFilesIn ./ps01/*_1.fastq.gz ./ps01/*_2.fastq.gz
#
## avr
#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
#--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
#--outFilterMultimapNmax 3 --outFileNamePrefix avr. --readFilesIn ./avr/*_1.fastq.gz ./avr/*_2.fastq.gz
#
## vir
#
#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
#--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
#--outFilterMultimapNmax 3 --outFileNamePrefix vir. --readFilesIn ./vir/*_1.fastq.gz ./vir/*_2.fastq.gz
#
#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
#--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
#--outFilterMultimapNmax 3 --outFileNamePrefix vir. --readFilesIn ./vir/*_1.fastq.gz ./vir/*_2.fastq.gz
#

#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
--outFilterMultimapNmax 3 --outFileNamePrefix N116_headstemp. --readFilesIn N116_R1_Q30paired.fq.gz N116_R2_Q30paired.fq.gz

#/shelf/apps/pjt6/apps/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 285554136874 \
--limitBAMsortRAM 90554136874 --runThreadN 8   --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 10  \
--outFilterMultimapNmax 3 --outFileNamePrefix PS01headstemp. --readFilesIn PS01_R1_Q30paired.fq.gz PS01_R2_Q30paired.fq.gz


#samtools sort -@ 8 N116.*.bam N116
#samtools sort -@ 8 PS01.*.bam PS01
#samtools sort -@ 8 avr.*.bam avr
#samtools sort -@ 8 vir.*.bam vir

#samtools sort -@ 8 PS01headstemp*.bam PS01_heads

samtools sort -@ 16 PS01.Aligned.sortedByCoord.out.bam PS01
samtools index PS01.bam


#samtools sort -@ 8 N116_headstemp*.bam N116_heads

#samtools index PS01_heads.bam
#samtools index N116_heads.bam


wait

#
#
#samtools index PS01.bam
#
#samtools index N116.bam
#samtools index avr.bam
#
#samtools index vir.bam
#
#samtools index PS01_heads.bam 
#
#samtools index N116_heads.bam



wait


#samtools merge -l 9 -@ 8 -f -r -h header.txt PS01_N116_avr_vir.bam PS01.bam N116.bam vir.bam avr.bam N116_heads.bam PS01_heads.bam

#samtools index PS01_N116_avr_vir.bam



