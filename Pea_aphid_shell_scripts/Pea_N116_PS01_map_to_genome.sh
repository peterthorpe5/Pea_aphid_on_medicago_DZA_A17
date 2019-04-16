#!/bin/bash
#$ -cwd
#$ -l hostname="n13*"
#$ -pe smp 10


##1)First index genome:
#bowtie2-build -f Mp1087439_TGAC_V1.1-scaffolds.fa Mp_O

#2)map back with Tophat2:


cd /mnt/shared/scratch/pt40963/Pea_aphid

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_3 --readFilesIn ./data/PS01_A17_3_R1_Q30paired.fq.gz ./data/PS01_A17_3_R2_Q30paired.fq.gz


STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_A17_1  --readFilesIn ./data/N116_A17_1_R1_Q30paired.fq.gz ./data/N116_A17_1_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_A17_2 --readFilesIn ./data/N116_A17_2_R1_Q30paired.fq.gz ./data/N116_A17_2_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_A17_3 --readFilesIn ./data/N116_A17_3_R1_Q30paired.fq.gz ./data/N116_A17_3_R2_Q30paired.fq.gz

#####

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_D2A_1 --readFilesIn ./data/N116_D2A_1_R1_Q30paired.fq.gz ./data/N116_D2A_1_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_D2A_2 --readFilesIn ./data/N116_D2A_2_R1_Q30paired.fq.gz ./data/N116_D2A_2_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix N116_D2A_3 --readFilesIn ./data/N116_D2A_3_R1_Q30paired.fq.gz ./data/N116_D2A_3_R2_Q30paired.fq.gz

######

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_1 --readFilesIn ./data/PS01_A17_1_R1_Q30paired.fq.gz ./data/PS01_A17_1_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_2 --readFilesIn ./data/PS01_A17_2_R1_Q30paired.fq.gz ./data/PS01_A17_2_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_A17_3 --readFilesIn ./data/PS01_A17_3_R1_Q30paired.fq.gz ./data/PS01_A17_3_R2_Q30paired.fq.gz

####

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_D2A_1 --readFilesIn ./data/PS01_D2A_1_R1_Q30paired.fq.gz ./data/PS01_D2A_1_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_D2A_2 --readFilesIn ./data/PS01_D2A_2_R1_Q30paired.fq.gz ./data/PS01_D2A_2_R2_Q30paired.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 10 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix PS01_D2A_3 --readFilesIn ./data/PS01_D2A_3_R1_Q30paired.fq.gz ./data/PS01_D2A_3_R2_Q30paired.fq.gz

#######
