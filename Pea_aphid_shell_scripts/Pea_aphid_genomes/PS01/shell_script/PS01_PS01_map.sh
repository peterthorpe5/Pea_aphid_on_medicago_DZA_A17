#$ -l hostname="n13*"
#$ -cwd
cd /home/pt40963/scratch/pea_aphid_genomes/PS01

#mkdir star_indicies

# index the genome
wait
cd /home/pt40963/scratch/pea_aphid_genomes/PS01


STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 16 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PS01-rep5 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PS01-rep5_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PS01-rep5_R2.fastq.gz
wait
echo "...........done 12 mapping jobs"
cho "...........done 13 mapping jobs"

STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 16 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep4 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep4_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep4_R2.fastq.gz
wait
echo "...........done 14 mapping jobs"

STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 16 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PSO1-rep3 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep3_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PSO1-rep3_R2.fastq.gz
wait
echo "...........done 15 mapping jobs"

STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 16 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PS01-rep2 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PS01-rep2_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PS01-rep2_R2.fastq.gz
wait

STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --runThreadN 16 --outSAMtype BAM SortedByCoordinate --outFilterMismatchNmax 7  --outFilterMultimapNmax 5  --readFilesCommand zcat --outFileNamePrefix PS01-rep1 --readFilesIn  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PS01-rep1_R1.fastq.gz  /home/pt40963/scratch/pea_aphid_RNAseq_20171104/trimmed_reads/PS01-rep1_R2.fastq.gz
wait
echo "...........done 20 mapping jobs"

########################################
##

# sort the bam files with samtools
samtools sort -@ 16 -o avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam avr-rep1Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PS01-rep3Aligned.sortedByCoord.out.bam_sorted.bam PS01-rep3Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep5Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam avr-rep2Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PS01-rep4Aligned.sortedByCoord.out.bam_sorted.bam PS01-rep4Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam vir-rep1Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam avr-rep3Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PS01-rep5Aligned.sortedByCoord.out.bam_sorted.bam PS01-rep5Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam vir-rep2Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam avr-rep4Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep1Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam vir-rep3Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam avr-rep5Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep2Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam vir-rep4Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PS01-rep1Aligned.sortedByCoord.out.bam_sorted.bam PS01-rep1Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep3Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam vir-rep5Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PS01-rep2Aligned.sortedByCoord.out.bam_sorted.bam PS01-rep2Aligned.sortedByCoord.out.bam
samtools sort -@ 16 -o PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam PSO1-rep4Aligned.sortedByCoord.out.bam

 index the bam files
samtools index avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PS01-rep3Aligned.sortedByCoord.out.bam_sorted.bam
samtools index PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam
samtools index avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PS01-rep4Aligned.sortedByCoord.out.bam_sorted.bam
samtools index vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PS01-rep5Aligned.sortedByCoord.out.bam_sorted.bam
samtools index vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam
samtools index vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam
samtools index vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PS01-rep1Aligned.sortedByCoord.out.bam_sorted.bam
samtools index PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam
samtools index vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam 
samtools index PS01-rep2Aligned.sortedByCoord.out.bam_sorted.bam
samtools index PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam

# bamtools to get the read counts that intercept the gene calls
bedtools multicov -bams  ./PS01-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam -bed ./format_for_py_script.out > PS01_12345_PS01_12345_avr_12345_vir12345.bed.counts
wait
cat PS01_12345_PS01_12345_avr_12345_vir12345* | cut -f5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29 > ./DE_analysis/PS01_12345_PS01_12345_avr_12345_vir12345genes.counts.matrix


bedtools multicov -bams  ./PS01-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./PS01-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam ./vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam -bed ./DE_analysis_Published_gene_models/format_forpy.out > PS01_12345_PS01_12345_avr_12345_vir12345.published.modles.bed.counts
wait
cat PS01_12345_PS01_12345_avr_12345_vir12345.published.modles.bed.counts | cut -f9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 > ./DE_analysis_Published_gene_models/PS01_12345_PS01_12345_avr_12345_vir12345.published_models.genes.counts.matrix



PS01_rep1	PS01_rep2	PS01_rep3	PS01_rep4	PS01_rep5	PS01_rep1	PS01_rep2	PS01_rep3	PS01_rep4	PS01_rep5	avr_rep1	avr_rep2	avr_rep3	avr_rep4	avr_rep	vir_rep1	vir_rep2	vir_rep3	vir_rep4	vir_rep5