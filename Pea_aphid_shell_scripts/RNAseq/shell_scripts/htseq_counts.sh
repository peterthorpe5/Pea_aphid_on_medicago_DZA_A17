cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104

#htseq-count --quiet -f bam --type gene --idattr ID avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > avr-rep1Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > N116-rep3Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > PSO1-rep5Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > avr-rep2Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > N116-rep4Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > vir-rep1Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > avr-rep3Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > N116-rep5Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > vir-rep2Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > avr-rep4Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > PSO1-rep1Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > vir-rep3Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > avr-rep5Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > PSO1-rep2Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > N116-rep1Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > PSO1-rep3Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > vir-rep5Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > N116-rep2Aligned.sortedByCoord.out.bam_sorted.bam.counts
#htseq-count --quiet -f bam --type gene --idattr ID PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > PSO1-rep4Aligned.sortedByCoord.out.bam_sorted.bam.counts

htseq-count --quiet -f bam --type gene --idattr ID vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam ~/Pea_aphid/final_genes/Apisum_predictions_PT_20160413.gff > vir-rep4Aligned.sortedByCoord.out.bam_sorted.bam.counts

# merge these into a file
FILES=$(ls -t -v *.counts | tr '\n' ' ')
awk 'NF > 1{ a[$1] = a[$1]"\t"$2} END {for( i in a ) print i a[i]}' $FILES > N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix

