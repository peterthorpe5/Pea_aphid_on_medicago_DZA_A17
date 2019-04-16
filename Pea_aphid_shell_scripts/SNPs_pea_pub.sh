#!/bin/bash
#$ -cwd
set -e
cd /storage/home/users/pjt6/pea_aphid

rm -rf star_indicies
mkdir star_indicies
num_threads=16

module load samtools
module load bowtie2/2.2.4


#pigz -d *.gz
#bowtie2-build --quiet -f pea_aphid_genes_hopefully.fasta bowtie_index_files

#bowtie2 --very-sensitive --non-deterministic --seed 1 --no-mixed --no-unal -p ${num_threads} -x bowtie_index_files \
#-1 PS01_R1_Q30paired.fq -2 PS01_R2_Q30paired.fq | samtools view -@ ${num_threads} -S -b -o tmp_unsortedp.bam -


#samtools sort -@ ${num_threads} tmp_unsorted.bam PS01


#bowtie2 --very-sensitive --non-deterministic --seed 1 --no-mixed --no-unal -p ${num_threads} -x bowtie_index_files \
#-1 N116_R1_Q30paired.fq -2 N116_R2_Q30paired.fq | samtools view -@ ${num_threads} -S -b -o tmp_unsorted.bam -


samtools sort -@ ${num_threads} tmp_unsorted.bam N116

wait

#
#
samtools index PS01.bam


samtools index N116.bam

wait


samtools merge -@ 16 -f -r -h header.txt merged.bam PS01.bam N116.bam

samtools index merged.bam

 module load freebayes
wait
#freebayes -f pea_aphid_genes_hopefully.fasta --no-population-priors --min-alternate-count 5 --min-alternate-fraction 0.9 -v PS01.vcf --ploidy 2 PS01.bam


#freebayes -f pea_aphid_genes_hopefully.fasta --no-population-priors --min-alternate-count 5 --min-alternate-fraction 0.9 -v N116.vcf --ploidy 2 N116.bam


freebayes -f pea_aphid_genes_hopefully.fasta --no-population-priors --min-alternate-count 5 --min-alternate-fraction 0.9 \
-v N116_PS01_versus_published_pea_aphid_genes.vcf --ploidy 2 merged.bam

wait
module load vcftools

vcftools --vcf PS01.vcf --SNPdensity 100 --out PS01.SNP_snpdensity
vcftools --vcf N116.vcf --SNPdensity 100 --out N116.SNP_snpdensity
vcftools --vcf N116_PS01.vcf --SNPdensity 100 --out all.SNP_snpdensity


conda activate bcftools

bgzip N116_PS01_versus_published_pea_aphid_genes.vcf
wait
tabix N116_PS01_versus_published_pea_aphid_genes.vcf.gz

bcftools consensus --sample PS01 -f pea_aphid_genes_hopefully.fasta N116_PS01_versus_published_pea_aphid_genes.vcf.gz > PS01_published_ACPI_genes_as_basis.fasta

bcftools consensus --sample N116 -f pea_aphid_genes_hopefully.fasta N116_PS01_versus_published_pea_aphid_genes.vcf.gz > N116_published_ACPI_genes_as_basis.fasta

#pjt6@marvin:~ > conda activate bcftools
#(bcftools) pjt6@marvin:~ > bcftools consensus -h
#
#About: Create consensus sequence by applying VCF variants to a reference fasta
#       file. By default, the program will apply all ALT variants. Using the
#       --sample (and, optionally, --haplotype) option will apply genotype
#       (or haplotype) calls from FORMAT/GT. The program ignores allelic depth
#       information, such as INFO/AD or FORMAT/AD.
#Usage:   bcftools consensus [OPTIONS] <file.vcf.gz>
#Options:
#    -c, --chain <file>         write a chain file for liftover
#    -e, --exclude <expr>       exclude sites for which the expression is true (see man page for details)
#    -f, --fasta-ref <file>     reference sequence in fasta format
#    -H, --haplotype <which>    choose which allele to use from the FORMAT/GT field, note
#                               the codes are case-insensitive:
#                                   1: first allele from GT
#                                   2: second allele
#                                   R: REF allele in het genotypes
#                                   A: ALT allele
#                                   LR,LA: longer allele and REF/ALT if equal length
#                                   SR,SA: shorter allele and REF/ALT if equal length
#    -i, --include <expr>       select sites for which the expression is true (see man page for details)
#    -I, --iupac-codes          output variants in the form of IUPAC ambiguity codes
#    -m, --mask <file>          replace regions with N
#    -M, --missing <char>       output <char> instead of skipping the missing genotypes
#    -o, --output <file>        write output to a file [standard output]
#    -s, --sample <name>        apply variants of the given sample
#Examples:
#   # Get the consensus for one region. The fasta header lines are then expected
#   # in the form ">chr:from-to".
#   samtools faidx ref.fa 8:11870-11890 | bcftools consensus in.vcf.gz > out.fa

