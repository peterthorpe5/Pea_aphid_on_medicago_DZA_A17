cd /storage/home/users/pjt6/pea_aphid/snpef_published

conda activate snpeffwrapper
#  python make_combined_fa_gff.py --genome HM005-15May2015-release.fasta --gff ../gene_predictions/medicago_DZA.gff3 -o test.gff


#snpEff Acyrthosiphon_pisum  combined_recal.prune10.vcf  > ACYPI_gene_PS01_N116_snpef.vcf

java -XX:-UsePerfData -Djava.io.tmpdir=/storage/home/users/pjt6/ -Xmx30g -jar /storage/home/users/pjt6/shelf_apps/apps/snpEff/snpEff.jar  Acyrthosiphon_pisum  combined_recal.prune10.vcf  > ACYPI_gene_PS01_N116_snpef.vcf



java -XX:-UsePerfData -Djava.io.tmpdir=/storage/home/users/pjt6/ -Xmx30g -jar /storage/home/users/pjt6/shelf_apps/apps/snpEff/snpEff.jar  Acyrthosiphon_pisum raw.g5mac3.recode.vcf > ACYPI_gene_PS01_N116_g5mac3.recode.snpef.vcf