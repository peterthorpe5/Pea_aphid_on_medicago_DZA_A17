#$ -l hostname="n13*"
#$ -cwd
cd /home/pt40963/scratch/Pea_aphid/SNP_PS01_N116

#1)
# uniqu mapping for SNP calling:
#STAR --genomeDir star_indicies/  --runThreadN 12 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix Pea  --readFilesIn R1.fq.gz R2.fq.gz 
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_3 --readFilesIn ./data/PS01_A17_3_R1_Q30paired.fq.gz ./data/PS01_A17_3_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_A17_1  --readFilesIn ./data/N116_A17_1_R1_Q30paired.fq.gz ./data/N116_A17_1_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_A17_2 --readFilesIn ./data/N116_A17_2_R1_Q30paired.fq.gz ./data/N116_A17_2_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_A17_3 --readFilesIn ./data/N116_A17_3_R1_Q30paired.fq.gz ./data/N116_A17_3_R2_Q30paired.fq.gz
######
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_D2A_1 --readFilesIn ./data/N116_D2A_1_R1_Q30paired.fq.gz ./data/N116_D2A_1_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_D2A_2 --readFilesIn ./data/N116_D2A_2_R1_Q30paired.fq.gz ./data/N116_D2A_2_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_D2A_3 --readFilesIn ./data/N116_D2A_3_R1_Q30paired.fq.gz ./data/N116_D2A_3_R2_Q30paired.fq.gz
#######
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_1 --readFilesIn ./data/PS01_A17_1_R1_Q30paired.fq.gz ./data/PS01_A17_1_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_2 --readFilesIn ./data/PS01_A17_2_R1_Q30paired.fq.gz ./data/PS01_A17_2_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_3 --readFilesIn ./data/PS01_A17_3_R1_Q30paired.fq.gz ./data/PS01_A17_3_R2_Q30paired.fq.gz
#####
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_D2A_1 --readFilesIn ./data/PS01_D2A_1_R1_Q30paired.fq.gz ./data/PS01_D2A_1_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_D2A_2 --readFilesIn ./data/PS01_D2A_2_R1_Q30paired.fq.gz ./data/PS01_D2A_2_R2_Q30paired.fq.gz
#STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_D2A_3 --readFilesIn ./data/PS01_D2A_3_R1_Q30paired.fq.gz ./data/PS01_D2A_3_R2_Q30paired.fq.gz

#######

# uniqu mapping for SNP calling:
#STAR --genomeDir star_indicies/  --runThreadN 12 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix Pea  --readFilesIn R1.fq.gz R2.fq.gz 


#2)
#sort the reads
#samtools sort -@ 16 PS01Aligned.toTranscriptome.out.bam PS01

#samtools sort -@ 16 N116Aligned.toTranscriptome.out.bam N116

#3)
#samtools index PS01.bam

#samtools index N116.bam

#4)
######creat a header.txt file with this in: not commented out in the file of course.

#@RG	ID:N116	SM:N116
#@RG	ID:PS01	SM:PS01

#5)
# merge the bam files with this header txt
#samtools merge -@ 8 -r -h header.txt merged.bam N116.bam PS01.bam

#samtools index merged.bam


#6)
#call SNPs:

#freebayes -f /home/pt40963/scratch/Pea_aphid/Pea_aphid_genome_no_discriptions.fasta  --no-population-priors --min-alternate-count 5 --min-alternate-fraction 0.9 -v  N116_PS01_merged_variants_based_gene_models_20160920.vcf --ploidy 2 merged.bam

freebayes -f A.pisum_nt.fasta --no-population-priors --min-alternate-count 5 --min-alternate-fraction 0.9 -v  N116_PS01_merged_variants_based_ntgene_models_20160920.vcf --ploidy 2 merged.bam


vcftools --vcf N116_PS01_merged_variants_based_ntgene_models_20160920.vcf --diff-site --out difference_in_sites
vcftools --vcf N116_PS01_merged_variants_based_ntgene_models_20160920.vcf --site-pi --out filterin1
vcftools --vcf N116_PS01_merged_variants_based_ntgene_models_20160920.vcf --hardy --out filterin1
vcftools --vcf N116_PS01_merged_variants_based_ntgene_models_20160920.vcf --site-quality --out quality_per_site
-SNPdensity 20 --out filterin1



