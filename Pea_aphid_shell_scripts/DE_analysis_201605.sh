#!/bin/bash

#Abort on any error,
set -e

cd /home/peter/Desktop/De_analysis/

# matrix
#/home/peter/Downloads/trinityrnaseq-2.1.1/util/abundance_estimates_to_matrix.pl --est_method kallisto --cross_sample_norm TMM --name_sample_by_basedir ./pea_aphid_N116_D2A_1/abundance.tsv ./pea_aphid_N116_D2A_2/abundance.tsv ./pea_aphid_N116_D2A_3/abundance.tsv ./pea_aphid_PS01_A17_1/abundance.tsv ./pea_aphid_PS01_A17_2/abundance.tsv ./pea_aphid_PS01_D2A_1/abundance.tsv ./pea_aphid_PS01_D2A_2/abundance.tsv ./pea_aphid_PS01_D2A_3/abundance.tsv ./pea_aphid_N116_A17_1/abundance.tsv ./pea_aphid_N116_A17_2/abundance.tsv ./pea_aphid_N116_A17_3/abundance.tsv --out_prefix Pea_aphid_GG_2016N116_PS01.matrix

# no biological reps:   $TRINITY_HOME/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix counts.matrix --method edgeR --dispersion 0.1

# with reps - need to make sample_file
/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix *counts.matrix --method edgeR --samples_file samples_described.txt --output transcripts_DE_analysis

wait 

##################################################################

cd ..
cd /home/peter/Desktop/De_analysis/transcripts_DE_analysis

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*TMM.EXPR.matrix -P 1e-2 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt
wait 

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*TMM.EXPR.matrix -P 1e-3 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt
wait 

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*TMM.EXPR.matrix -P 1e-4 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt
wait 

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../*TMM.EXPR.matrix -P 1e-5 -C 2 --max_genes_clust 50000 --samples ../samples_described.txt

#########################

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-2_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-2_C2.matrix.RData.clusters_fixed_P_70

wait 




#########################

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-3_C2.matrix.RData
wait 

# -K <int> define k clusters.

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --K 5 -R diffExpr.P1e-3_C2.matrix.RData

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --K 5 -R diffExpr.P1e-3_C2.matrix.RData

mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-3_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-3_C2.matrix.RData.clusters_fixed_P_70
wait 


###########################################################


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-4_C2.matrix.RData
wait 

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --K 3 -R diffExpr.P1e-4_C2.matrix.RData

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --K 4 -R diffExpr.P1e-4_C2.matrix.RData

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --K 5 -R diffExpr.P1e-4_C2.matrix.RData

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --K 6 -R diffExpr.P1e-4_C2.matrix.RData



mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-4_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-4_C2.matrix.RData.clusters_fixed_P_70
wait 


#########################################################

/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 40 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_40.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_40
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 50 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_50.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_50
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 60 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_60.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_60
wait 


/home/peter/Downloads/trinityrnaseq-2.1.1/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --Ptree 70 -R diffExpr.P1e-5_C2.matrix.RData
wait 


mv /home/peter/Desktop/De_analysis/transcripts_DE_analysis/*_P_70.heatmap.heatmap.pdf /home/peter/Desktop/De_analysis/transcripts_DE_analysis/diffExpr.P1e-5_C2.matrix.RData.clusters_fixed_P_70



