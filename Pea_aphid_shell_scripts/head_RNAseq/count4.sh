#!/bin/bash
#$ -cwd
#set -e

cd  /storage/home/users/pjt6/pea_aphid/head_RNAseq


conda activate python27

# HTseq counts


#conda activate python27
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_A17_1*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_A17_1.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_A17_2*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_A17_2.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_A17_3*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_A17_3.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_A17_2*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_A17_2.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_DZA_1*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_DZA_1.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_DZA_2*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_DZA_2.counts
htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_DZA_3*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_DZA_3.counts
htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_DZA_2*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_DZA_2.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_DZA_1*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_DZA_1.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_N116_DZA_3*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_N116_DZA_3.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_PS01_DZA_1*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_PS01_DZA_1.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_PS01_DZA_2*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_PS01_DZA_2.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_PS01_DZA_3*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_PS01_DZA_3.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_PS01_A17_2*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_PS01_A17_2.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_PS01_A17_1*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_PS01_A17_1.counts
#htseq-count  -r pos --quiet -f bam --type gene --idattr ID pea_aphid_PS01_A17_3*.bam AphidBase_OGS2.1b.gff3 > ./published_models/pea_aphid_PS01_A17_3.counts

echo "	" > Pea_head_RNAseq_genes.counts.matrix
# merge these into a file
FILES=$(ls -t -v *.counts | tr '\n' ' ')
awk 'NF > 1{ a[$1] = a[$1]"\t"$2} END {for( i in a ) print i a[i]}' $FILES | grep -v "__" >> Pea_head_RNAseq_genes.counts.matrix
