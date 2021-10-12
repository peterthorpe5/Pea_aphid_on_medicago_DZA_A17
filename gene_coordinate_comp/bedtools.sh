cd /storage/home/users/pjt6/pea_aphid/new_gene_models
conda activate bedtools

# ACYPI vs new
bedtools intersect -wa -wb -a pea_fun_Api.gene.gff3  -b pea_published_gene_cood_only.gff > ACYPI_vs_new.gff

bedtools intersect -wa -wb -a pea_fun_Api.gene.gff3  -b Api_models.genes.gff > Api_vs_new.gff


bedtools intersect -v -a new_genes.gff Api_models.genes.gff -b pea_published_gene_cood_only.gff Api_models.genes.gff > do_not_overlap.gff

bedtools intersect -wa -wb -a pea_published_gene_cood_only.gff -b Api_models.genes.gff -wao > overlap.gff
