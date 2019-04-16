
cd /storage/home/users/pjt6/pea_aphid/goi_clustering

	
mkdir 210IDs_upN116_AND_VIRpool_HTSeq-p0.05

mkdir 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05

mkdir N116_AND_PSO1_saliva_Api_2880IDs

mkdir 751IDs_upN116_AND_VIRpool_Relaxed-p0.05

mkdir N116-PSO1-saliva-Api_intersect_Phobius-combined

mkdir 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05

mkdir A.pisum_secreted.genes.names.1880unique-cleanIDs



######################################################
######################################################

	      
cd 210IDs_upN116_AND_VIRpool_HTSeq-p0.05

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../210IDs_upN116_AND_VIRpool_HTSeq-p0.05.txt >> 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R 210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./210IDs_upN116_AND_VIRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering

cd 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.txt >> 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R 300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering

cd N116_AND_PSO1_saliva_Api_2880IDs

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../N116_AND_PSO1_saliva_Api_2880IDs.txt >> N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./N116_AND_PSO1_saliva_Api_2880IDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering

cd 751IDs_upN116_AND_VIRpool_Relaxed-p0.05

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../751IDs_upN116_AND_VIRpool_Relaxed-p0.05.txt >> 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R 751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./751IDs_upN116_AND_VIRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering

cd N116-PSO1-saliva-Api_intersect_Phobius-combined

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../N116-PSO1-saliva-Api_intersect_Phobius-combined.txt >> N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./N116-PSO1-saliva-Api_intersect_Phobius-combined.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering

cd 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.txt >> 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R 879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering

cd A.pisum_secreted.genes.names.1880unique-cleanIDs

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM

 cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../A.pisum_secreted.genes.names.1880unique-cleanIDs.txt >> A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM

/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2
/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData
mv clusters_fixed_Ktree_* ./A.pisum_secreted.genes.names.1880unique-cleanIDs.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8

cd /storage/home/users/pjt6/pea_aphid/goi_clustering











q = """210IDs_upN116_AND_VIRpool_HTSeq-p0.05.txt
300IDs_upPSO1_AND_AVRpool_HTSeq-p0.05.txt             N116_AND_PSO1_saliva_Api_2880IDs.txt
751IDs_upN116_AND_VIRpool_Relaxed-p0.05.txt           N116-PSO1-saliva-Api_intersect_Phobius-combined.txt
879IDs_upPSO1_AND_AVRpool_Relaxed-p0.05.txt
A.pisum_secreted.genes.names.1880unique-cleanIDs.txt""".split()
>>> 
>>> 
>>> 
>>> for i in q:
	print("mkdir %s\n" % (i.split(".tx")[0]))
    
    
>>> for i in q:
	print("cd %s\n" % (i.split(".tx")[0]))
	print(" cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | head -n 1 > %s.genes.counts.matrix.TMM_normalized.FPKM\n" % (i.split(".tx")[0]))
	print(" cat ../N116_PSO1_avr_VIR_HTSEQ2.genes.counts.matrix.TMM_normalized.FPKM | grep -Ff ../%s >> %s.genes.counts.matrix.TMM_normalized.FPKM\n" % (i, i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/PtR -s ../samples_described.txt -m %s.genes.counts.matrix.TMM_normalized.FPKM --save --heatmap --log2 --center_rows" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 20 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_20" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 30 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_30" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering --Ptree 50 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_50" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ptree 70 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_P_70" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 4 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_Ktree_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_4" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 2 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_Ktree_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_2" % (i.split(".tx")[0]))
	print("/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl --lexical_column_ordering  --Ktree 8 -R %s.genes.counts.matrix.TMM_normalized.FPKM.RData" % (i.split(".tx")[0]))
	print("mv clusters_fixed_Ktree_* ./%s.genes.counts.matrix.TMM_normalized.FPKM.RData.clusters_fixed_Ktree_8" % (i.split(".tx")[0]))
	print("\ncd /storage/home/users/pjt6/pea_aphid/goi_clustering\n")


