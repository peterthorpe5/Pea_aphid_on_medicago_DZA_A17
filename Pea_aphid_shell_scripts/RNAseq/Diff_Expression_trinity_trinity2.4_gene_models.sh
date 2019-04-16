#!/bin/bash

#Abort on any error,
#set -e

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix *genes.counts.matrix --samples_file samples_described.txt --method edgeR --output genes_DE_analysis
wait 


wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/run_TMM_normalization_write_FPKM_matrix.pl --matrix *.genes.counts.matrix --lengths genes_feature_lengths.txt

# does not need gene lenghts for this method
#/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/run_TMM_normalization_write_FPKM_matrix.pl --matrix *.genes.counts.matrix --just_do_TMM_scaling


# .genes.counts.matrix.TMM_normalized.FPKM_normalized.FPKM - if you use gene lengths
# *.genes.counts.matrix.TMM_normalized.FPKM - if you use -just_do_TMM_scaling

##################################################################################################################################

cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*.genes.counts.matrix.TMM_normalized.FPKM -P 0.05 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*.genes.counts.matrix.TMM_normalized.FPKM -P 1e-2 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*.genes.counts.matrix.TMM_normalized.FPKM -P 1e-3 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*.genes.counts.matrix.TMM_normalized.FPKM -P 1e-4 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*.genes.counts.matrix.TMM_normalized.FPKM -P 1e-5 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt

wait 



###########################################################################################################

# P = 0.05
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 30 -R diffExpr.P0.05_C2.matrix.RData
wait 
mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis
mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_30.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_30

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_70
 
wait 


#################################################

# p = 1e-2
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 30 -R diffExpr.P1e-2_C2.matrix.RData
wait 

mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_30.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_30

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_70
 
wait 



############################################
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 30 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_30.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_30


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_70
wait 


###########################################

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv *_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_70
wait 



##########################################################
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-5_C2.matrix.RData

wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_40

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_RNAseq_20171104/HTseq_gene_counts/DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_70
wait 


##################################################################
