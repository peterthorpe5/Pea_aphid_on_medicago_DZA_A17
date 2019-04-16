#$ -l hostname="n13*"
#$ -cwd
cd /home/pt40963/scratch/pea_aphid_genomes/N116

#mkdir star_indicies

# index the genome
# STAR --runMode genomeGenerate --runThreadN 22 --limitGenomeGenerateRAM 259760745173 --genomeDir /home/pt40963/scratch/pea_aphid_genomes/N116/star_indicies --genomeFastaFiles /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt.fasta
#wait
#cd /home/pt40963/scratch/pea_aphid_genomes/N116
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix avr-rep2 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep2_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep2_R2.fastq.gz
#wait
#echo "...........done 1 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix vir-rep4 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep4_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep4_R2.fastq.gz
#wait
#echo "...........done 2 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep2 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep2_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep2_R2.fastq.gz
#wait
#echo "...........done 3 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix N116-rep3 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep3_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep3_R2.fastq.gz
#wait
#echo "...........done 4 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix avr-rep3 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep3_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep3_R2.fastq.gz
#wait
#echo "...........done 5 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep5 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep5_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep5_R2.fastq.gz
#wait
#echo "...........done 6 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep1 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep1_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep1_R2.fastq.gz
#wait
#echo "...........done 7 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix avr-rep5 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep5_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep5_R2.fastq.gz
#wait
#echo "...........done 8 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix vir-rep5 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep5_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep5_R2.fastq.gz
#wait
#echo "...........done 9 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix N116-rep4 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep4_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep4_R2.fastq.gz
#wait
#echo "...........done 10 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix vir-rep3 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep3_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep3_R2.fastq.gz
#wait
#echo "...........done 11 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix N116-rep5 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep5_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep5_R2.fastq.gz
#wait
#echo "...........done 12 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix avr-rep4 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep4_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep4_R2.fastq.gz
#wait
#echo "...........done 13 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep4 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep4_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep4_R2.fastq.gz
#wait
#echo "...........done 14 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep3 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep3_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep3_R2.fastq.gz
#wait
#echo "...........done 15 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix N116-rep2 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep2_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep2_R2.fastq.gz
#wait
#echo "...........done 16 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix vir-rep1 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep1_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep1_R2.fastq.gz
#wait
#echo "...........done 17 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix avr-rep1 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep1_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/avr-rep1_R2.fastq.gz
#wait
#echo "...........done 18 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix vir-rep2 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep2_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/vir-rep2_R2.fastq.gz
#wait
#echo "...........done 19 mapping jobs"
#
#STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 22 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix N116-rep1 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep1_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/N116-rep1_R2.fastq.gz
#wait
#echo "...........done 20 mapping jobs"
#
#########################################
###

# sort the bam files with samtools
#samtools sort -@ 8 -o avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam avr-rep1Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam N116-rep3Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep5Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam avr-rep2Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam N116-rep4Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam vir-rep1Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam avr-rep3Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam N116-rep5Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam vir-rep2Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam avr-rep4Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep1Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam vir-rep3Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam avr-rep5Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep2Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam vir-rep4Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam N116-rep1Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep3Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam vir-rep5Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam N116-rep2Aligned.sortedByCoord.out.bam
#samtools sort -@ 8 -o PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep4Aligned.sortedByCoord.out.bam
#
## index the bam files
#samtools index avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam 
#samtools index N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam
#samtools index PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam

# bamtools to get the read counts that intercept the gene calls
bedtools multicov -bams  ./N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam bed ./DE_analysis_Published_gene_models/format_forpy.out > N116_12345_PS01_12345_avr_12345_vir12345.bed.counts
wait
cat N116_12345_PS01_12345_avr_12345_vir12345* | cut -f5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29 > ./DE_analysis/N116_12345_PS01_12345_avr_12345_vir12345genes.counts.matrix


bedtools multicov -bams  ./N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam -bed ./DE_analysis_Published_gene_models/format_forpy.out > N116_12345_PS01_12345_avr_12345_vir12345.published.modles.bed.counts
wait
cat N116_12345_PS01_12345_avr_12345_vir12345.published.modles.bed.counts | cut -f9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 > ./DE_analysis_Published_gene_models/N116_12345_PS01_12345_avr_12345_vir12345.published_models.genes.counts.matrix



#N116_rep1	N116_rep2	N116_rep3	N116_rep4	N116_rep5	PS01_rep1	PS01_rep2	PS01_rep3	PS01_rep4	PS01_rep5	avr_rep1	avr_rep2	avr_rep3	avr_rep4	avr_rep	vir_rep1	vir_rep2	vir_rep3	vir_rep4	vir_rep5





htseq-count --quiet -f bam --type gene --idattr ID avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts
htseq-count --quiet -f bam --type gene --idattr ID vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam N116_alt.fasta.masked_pea_aphid_masked_modles201801801.renamed.fixed.gff > vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam.htseq.counts


# merge these into a file
FILES=$(ls -t -v *htseq.counts | tr '\n' ' ')
awk 'NF > 1{ a[$1] = a[$1]"\t"$2} END {for( i in a ) print i a[i]}' $FILES > merged.tmp

