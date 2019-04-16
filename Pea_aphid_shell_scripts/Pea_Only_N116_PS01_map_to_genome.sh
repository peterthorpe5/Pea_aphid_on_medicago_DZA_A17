#!/bin/bash
#$ -cwd
#$ -l hostname="n13*"


##1)First index genome:
#bowtie2-build -f Mp1087439_TGAC_V1.1-scaffolds.fa Mp_O

#2)map back with Tophat2:


cd /mnt/shared/scratch/pt40963/Pea_aphid



cat /mnt/shared/scratch/pt40963/Pea_aphid/data/N116_R1_Q30paired.fq.gz /mnt/shared/scratch/pt40963/Pea_aphid/data/PS01_R1_Q30paired.fq.gz > R1.fq.gz
cat /mnt/shared/scratch/pt40963/Pea_aphid/data/N116_R2_Q30paired.fq.gz /mnt/shared/scratch/pt40963/Pea_aphid/data/PS01_R2_Q30paired.fq.gz  > R2.fq.gz

STAR --genomeDir star_indicies/  --runThreadN 12 --sjdbGTFfile ./A.pisum.gtf --quantMode TranscriptomeSAM --outFilterMultimapNmax 5 --outSAMtype BAM SortedByCoordinate --outSAMmapqUnique 255 --outFilterMismatchNmax 5 --readFilesCommand zcat --outFileNamePrefix Pea  --readFilesIn R1.fq.gz R2.fq.gz 


#1) create a GC window
# arguments:  in.fasta windowsize > pipe_to_file
		
python ~/misc_python/Circos_python_scripts/gc_window_for_sequences.py GL349624.scaffold.fasta 25 > GL349624.scaffold.fasta.gc.25.txt
python ~/misc_python/Circos_python_scripts/gc_window_for_sequences.py GL349624.scaffold.fasta 250 > GL349624.scaffold.fasta.gc.250.txt


samtools sort -@ 12 PeaAligned.sortedByCoord.out.bam Pea_sorted

samtools index Pea_sorted.bam


#get the depth of coverage at each postition: samtools depth
samtools depth Pea_sorted.bam > Pea_whole_genome.RNAseq.depth

#GL349624   wanted scaffold

python ~/misc_python/Circos_python_scripts/get_scaffold_cov_only.py Pea_whole_genome.RNAseq.depth wanted.scaff > GL349624_RNAseq.depth.out
		
#python cov_window_for_covfile.py covfile window_size karyoteyp_file > output_file.txt
		
python ~/misc_python/Circos_python_scripts/cov_window_for_bedfile.py GL349624_RNAseq.depth.out 250 /home/pt40963/scratch/diagram_drawing_test/circos/mp1_mpsec5/plotting_files/karyotype.Mc.txt > GL349624_RNAseq.depth.out_RNAseq.dpeth.out.250.window

python ~/misc_python/Circos_python_scripts/cov_window_for_bedfile.py GL349624_RNAseq.depth.out 100 /home/pt40963/scratch/diagram_drawing_test/circos/mp1_mpsec5/plotting_files/karyotype.Mc.txt > GL349624_RNAseq.depth.out_RNAseq.dpeth.out.100.window

python ~/misc_python/Circos_python_scripts/cov_window_for_bedfile.py GL349624_RNAseq.depth.out 50 /home/pt40963/scratch/diagram_drawing_test/circos/mp1_mpsec5/plotting_files/karyotype.Mc.txt > GL349624_RNAseq.depth.out_RNAseq.dpeth.out.500.window
