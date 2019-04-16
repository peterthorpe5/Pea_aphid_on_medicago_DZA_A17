#!/bin/bash

#Abort on any error,
#set -e

cd /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix *genes.counts.matrix --samples_file samples_described.txt --method edgeR --output genes_DE_analysis
wait 

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/run_TMM_normalization_write_FPKM_matrix.pl --matrix *.genes.counts.matrix --lengths genes_feature_lengths.txt

wait 


/home/peter/Downloads/trinityrnaseq_r20131110/Analysis/DifferentialExpression/run_TMM_normalization_write_FPKM_matrix.pl --matrix *.genes.counts.matrix --lengths genes_feature_lengths.txt

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/PtR --lexical_column_ordering --matrix *genes.counts.matrix --samples samples_described.txt --CPM --log2 --min_rowSums 10 --compare_replicates

wait
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/PtR --lexical_column_ordering --matrix *genes.counts.matrix --min_rowSums 2 --samples samples_described.txt --log2 --CPM --sample_cor_matrix

wait
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/PtR --matrix *genes.counts.matrix -s samples_described.txt --min_rowSums 10 --log2 --CPM --center_rows --prin_comp 3



##################################################################################################################################

cd /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis


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
mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis
mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_30.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_30

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P0.05_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P0.05_C2.matrix.RData.clusters_fixed_P_70
 
wait 


#################################################

# p = 1e-2
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 30 -R diffExpr.P1e-2_C2.matrix.RData
wait 

mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_30.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_30

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_70
 
wait 



############################################
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 30 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_30.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_30


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_70
wait 


###########################################

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv *_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_70
wait 



##########################################################
/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-5_C2.matrix.RData

wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_40

/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/pt40963/scratch/Downloads/trinityrnaseq-Trinity-v2.4.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/pt40963/scratch/pea_aphid_genomes/N116/htseq_DE_analysis/genes_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_70
wait 


##################################################################
