 1002  cd clustering/

 1009  python ~/misc_python/get_sequences_i_want_from_fasta_command_line.py A.pisum.AA.annotated.fasta Api.uniq Api.uniq.fasta
 1012  python ~/misc_python/get_sequences_i_want_from_fasta_command_line.py APISUM_N116.gene.AA.annotated.fasta N116.uniq N116.uniq.fasta
 1013  python ~/misc_python/get_sequences_i_want_from_fasta_command_line.py APISUM_PS01.gene.AA.annotated.fasta PS01.uniq PS01.uniq.fasta

 1017  makeblastdb -in Pea_aphid_genome.fasta -dbtype nucl

 1020  blastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outmft 6 -evalue 1e-30 -num_threads 4 -num_target_seqs 1 -out N116_uniq_vs_reference.tab
 1021  blastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -num_target_seqs 1 -out N116_uniq_vs_reference.tab
 1022  blastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 --max_target_seqs 1 -out N116_uniq_vs_reference.tab
 1023  blastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out N116_uniq_vs_reference.tab
 1024  tblastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out N116_uniq_vs_reference.tab
 1025  cd ../
 1026  ls
 1027  cd N116
 1028  ls
 1029  makeblastdb -in N116_alt.fasta -dbtype nucl
 1030  pwd
 1031  cd ../
 1032  cd clustering/
 1033  ls
 1034  tblastn -db /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt.fasta -query PS01.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out PS01_uniq_vs_N116Genome.tab
 1035  more PS01_uniq_vs_N116Genome.tab
 1036  more PS01.uniq.fasta
 1037  python ~/misc_python/get_sequences_i_want_from_fasta_command_line.py APISUM_PS01.gene.AA.annotated.fasta PS01.uniq PS01.uniq.fasta


# n116 vs ref
tblastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out N116_uniq_vs_reference.tab
tblastn -db /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt.fasta -query Api.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out Api.uniq.fasta_vs_N116Genome.tab
tblastn -db /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt.fasta -query PS01.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out PS01_uniq_vs_N116Genome.tab
tblastn -db /home/pt40963/scratch/pea_aphid_genomes/N116/N116_alt.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out N116.uniq.fasta_vs_N116Genome.tab
tblastn -db /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt.fasta -query Api.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out Api.uniq.fasta_vs_PS01Genome.tab
tblastn -db /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt.fasta -query PS01.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out PS01.uniq.fasta_vs_PS01Genome.tab
tblastn -db /home/pt40963/scratch/pea_aphid_genomes/PS01/PS01_alt.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out N116_uniq_vs_PS01Genome.tab
tblastn -db ../Pea_aphid_genome.fasta -query N116.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out N116_uniq_vs_reference.tab
tblastn -db ../Pea_aphid_genome.fasta -query PS01.uniq.fasta -outfmt 6 -evalue 1e-30 -num_threads 4 -max_target_seqs 1 -out PS01.uniq.fasta_vs_reference.tab

# genes unique to PS01 (1e-30 was the cut off):

APISUM_PS01_22268.t1|---NA---
APISUM_PS01_22746.t1|---NA---
APISUM_PS01_13251.t1|RNA-dependent-RNA-polymerase
APISUM_PS01_22582.t1|---NA---
APISUM_PS01_17414.t1|---NA---
APISUM_PS01_01356.t1|---NA---
APISUM_PS01_22238.t1|---NA---
APISUM_PS01_07107.t1|---NA---
APISUM_PS01_16593.t1|---NA---
APISUM_PS01_23518.t1|---NA---
APISUM_PS01_08752.t1|---NA---
APISUM_PS01_13200.t1|---NA---
APISUM_PS01_14188.t1|---NA---
APISUM_PS01_05050.t1|---NA---
APISUM_PS01_07245.t1|---NA---
APISUM_PS01_10243.t1|---NA---
APISUM_PS01_11494.t1|---NA---
APISUM_PS01_23597.t1|---NA---
APISUM_PS01_23905.t1|PTS-mannose-transporter-subunit-IIAB
APISUM_PS01_10466.t1|---NA---
APISUM_PS01_14029.t1|---NA---
APISUM_PS01_23767.t1|---NA---
APISUM_PS01_16790.t1|---NA---
APISUM_PS01_12286.t1|RNA-dependent-RNA-polymerase
APISUM_PS01_22701.t1|---NA---
APISUM_PS01_05864.t1|---NA---
APISUM_PS01_20990.t1|---NA---
APISUM_PS01_07231.t1|---NA---
APISUM_PS01_12283.t1|nucleocapsid
APISUM_PS01_03698.t1|---NA---
APISUM_PS01_13250.t1|RNA-dependent-RNA-polymerase
APISUM_PS01_01665.t1|---NA---
APISUM_PS01_18095.t1|---NA---
APISUM_PS01_01205.t1|---NA---
APISUM_PS01_23850.t1|---NA---
APISUM_PS01_14622.t1|---NA---
APISUM_PS01_15293.t1|---NA---
APISUM_PS01_21300.t1|---NA---
APISUM_PS01_10379.t1|---NA---
APISUM_PS01_01203.t1|---NA---
APISUM_PS01_00189.t1|---NA---
APISUM_PS01_05869.t1|---NA---
APISUM_PS01_03600.t1|---NA---
APISUM_PS01_18769.t1|---NA---
APISUM_PS01_22633.t1|---NA---
APISUM_PS01_00776.t1|---NA---
APISUM_PS01_01468.t1|---NA---
APISUM_PS01_12284.t1|---NA---
APISUM_PS01_09436.t1|---NA---
APISUM_PS01_02448.t1|---NA---
APISUM_PS01_04631.t1|---NA---
APISUM_PS01_22876.t1|---NA---
APISUM_PS01_01070.t1|---NA---
APISUM_PS01_15727.t1|---NA---
APISUM_PS01_02523.t1|PREDICTED:-uncharacterized-protein-DDB_G0285917-like
APISUM_PS01_16238.t1|---NA---
APISUM_PS01_22620.t1|---NA---
APISUM_PS01_02701.t1|---NA---
APISUM_PS01_01733.t1|---NA---
APISUM_PS01_01630.t1|---NA---
APISUM_PS01_05174.t1|---NA---
APISUM_PS01_13417.t1|---NA---
APISUM_PS01_03649.t1|---NA---
APISUM_PS01_15165.t1|---NA---
APISUM_PS01_01859.t1|---NA---
APISUM_PS01_00729.t1|---NA---
APISUM_PS01_16542.t1|---NA---
APISUM_PS01_17779.t1|---NA---
APISUM_PS01_06800.t1|---NA---
APISUM_PS01_14189.t1|---NA---
APISUM_PS01_17593.t1|---NA---
APISUM_PS01_19901.t1|---NA---
APISUM_PS01_20585.t1|---NA---
APISUM_PS01_22329.t1|---NA---
APISUM_PS01_23632.t1|---NA---
APISUM_PS01_06500.t1|---NA---
APISUM_PS01_02903.t1|---NA---
APISUM_PS01_03292.t1|---NA---
APISUM_PS01_21304.t1|---NA---
APISUM_PS01_04199.t1|---NA---
APISUM_PS01_18951.t1|---NA---
APISUM_PS01_23864.t1|pilus-assembly
APISUM_PS01_12285.t1|---NA---
APISUM_PS01_14793.t1|---NA---
APISUM_PS01_18842.t1|---NA---
APISUM_PS01_21299.t1|---NA---
APISUM_PS01_14231.t1|---NA---
APISUM_PS01_23907.t1|---NA---
APISUM_PS01_09841.t1|---NA---
APISUM_PS01_01247.t1|---NA---


# N116 unique genes:
APISUM_N116_24528.t1|carnitine-dehydratase
APISUM_N116_24519.t1|transposase
APISUM_N116_24594.t1|4-amino-4-deoxy-L-arabinose-phosphoundecaprenol-flippase-subunit
APISUM_N116_24031.t1|---NA---
APISUM_N116_21727.t1|---NA---
APISUM_N116_16179.t1|hypothetical-protein
APISUM_N116_09003.t1|---NA---
APISUM_N116_07743.t1|---NA---
APISUM_N116_10806.t1|GrBNV_gp35-like-protein
APISUM_N116_07172.t1|---NA---
APISUM_N116_17917.t1|ATP-binding
APISUM_N116_20484.t1|excisionase
APISUM_N116_23360.t1|hypothetical-protein
APISUM_N116_24455.t1|hypothetical-protein
APISUM_N116_09748.t1|---NA---
APISUM_N116_14212.t1|Uncharacterised
APISUM_N116_22436.t1|---NA---
APISUM_N116_14007.t1|---NA---
APISUM_N116_24464.t1|DUF433-domain-containing
APISUM_N116_24315.t1|---NA---
APISUM_N116_16172.t1|hypothetical-protein
APISUM_N116_02327.t1|PIN-domain-nuclease
APISUM_N116_23653.t1|Tn3-family-transposase
APISUM_N116_23032.t1|glycosyl-hydrolase
APISUM_N116_23194.t1|---NA---
APISUM_N116_08457.t1|recombinase-family
APISUM_N116_17087.t1|---NA---
APISUM_N116_24506.t1|---NA---
APISUM_N116_08462.t1|prepilin-peptidase
APISUM_N116_21805.t1|---NA---
APISUM_N116_10808.t1|---NA---
APISUM_N116_07481.t1|---NA---
APISUM_N116_14829.t1|---NA---
APISUM_N116_19615.t1|hypothetical-protein
APISUM_N116_10809.t1|---NA---
APISUM_N116_19393.t1|---NA---
APISUM_N116_22385.t1|---NA---
APISUM_N116_07856.t1|---NA---
APISUM_N116_17922.t1|DNA-binding
APISUM_N116_24709.t1|---NA---
APISUM_N116_23199.t1|Uncharacterised
APISUM_N116_11065.t1|---NA---
APISUM_N116_24019.t1|---NA---
APISUM_N116_20160.t1|---NA---
APISUM_N116_19464.t1|---NA---
APISUM_N116_07447.t1|---NA---
APISUM_N116_17916.t1|DUF669-domain-containing
APISUM_N116_17286.t1|---NA---
APISUM_N116_23408.t1|---NA---
APISUM_N116_10540.t1|---NA---
APISUM_N116_24313.t1|---NA---
APISUM_N116_24719.t1|---NA---
APISUM_N116_16029.t1|---NA---
APISUM_N116_19834.t1|orf32-gene-product
APISUM_N116_08468.t1|family-DNA-binding-domain-containing
APISUM_N116_22398.t1|PREDICTED:-neurexin-1-like
APISUM_N116_22074.t1|Transposase-and-inactivated-derivatives%2C-family
APISUM_N116_17768.t1|---NA---
APISUM_N116_18811.t1|phage-baseplate-assembly-W
APISUM_N116_22541.t1|DNA-recombinase
APISUM_N116_21873.t1|---NA---
APISUM_N116_14155.t1|---NA---
APISUM_N116_02406.t1|tropomyosin--isoforms-9A-A-B-isoform-X21
APISUM_N116_24697.t1|zinc-finger-MYM-type-1-like
APISUM_N116_13572.t1|Uncharacterised
APISUM_N116_19276.t1|---NA---
APISUM_N116_11157.t1|---NA---
APISUM_N116_07472.t1|---NA---
APISUM_N116_22505.t1|integrase
APISUM_N116_20375.t1|---NA---
APISUM_N116_08828.t1|---NA---
APISUM_N116_09573.t1|---NA---
APISUM_N116_01087.t1|---NA---
APISUM_N116_22517.t1|---NA---
APISUM_N116_13627.t1|---NA---
APISUM_N116_16830.t1|ATP-dependent-DNA-ligase
APISUM_N116_20737.t1|DNA-repair
APISUM_N116_08470.t1|conjugal-transfer
APISUM_N116_18537.t1|---NA---
APISUM_N116_22527.t1|---NA---
APISUM_N116_06919.t1|---NA---
APISUM_N116_21487.t1|---NA---
APISUM_N116_20855.t1|PREDICTED:-uncharacterized-protein-LOC103308045
APISUM_N116_00706.t1|---NA---
APISUM_N116_04004.t1|---NA---
APISUM_N116_22049.t1|ribbon-helix-helix-family
APISUM_N116_03181.t1|---NA---
APISUM_N116_16480.t1|Uncharacterised
APISUM_N116_20067.t1|---NA---
APISUM_N116_16136.t1|R-of-type-II-restriction-and-modification-system
APISUM_N116_12207.t1|---NA---
APISUM_N116_24467.t1|---NA---
APISUM_N116_15363.t1|---NA---
APISUM_N116_24525.t1|tRNA-(cytidine-uridine-2--O-)-methyltransferase
APISUM_N116_20140.t1|---NA---
APISUM_N116_23746.t1|---NA---
APISUM_N116_23520.t1|---NA---
APISUM_N116_22565.t1|family-type-III-secretion-system-needle-tip
APISUM_N116_24353.t1|transcriptional-regulator
APISUM_N116_06588.t1|---NA---
APISUM_N116_16174.t1|hypothetical-protein
APISUM_N116_20999.t1|---NA---
APISUM_N116_24551.t1|Uncharacterised
APISUM_N116_13626.t1|---NA---
APISUM_N116_13568.t1|Regulator
APISUM_N116_08464.t1|conjugal-transfer
APISUM_N116_23024.t1|---NA---
APISUM_N116_16134.t1|restriction-endonuclease-subunit-M
APISUM_N116_18309.t1|---NA---
APISUM_N116_22211.t1|---NA---
APISUM_N116_23341.t1|Transposase
APISUM_N116_24285.t1|conjugal-transfer
APISUM_N116_18288.t1|cell-wall-associated-hydrolase
APISUM_N116_15466.t1|---NA---
APISUM_N116_18091.t1|---NA---
APISUM_N116_08465.t1|conjugal-transfer
APISUM_N116_02332.t1|cytoplasmic
APISUM_N116_22564.t1|family-type-III-secretion-system-needle-tip
APISUM_N116_18816.t1|---NA---
APISUM_N116_23980.t1|resolvase
APISUM_N116_23580.t1|---NA---
APISUM_N116_21486.t1|IS21-family-transposase
APISUM_N116_19739.t1|---NA---
APISUM_N116_16138.t1|entry-exclusion-1
APISUM_N116_20310.t1|---NA---
APISUM_N116_12123.t1|---NA---
APISUM_N116_14300.t1|---NA---
APISUM_N116_08695.t1|---NA---
APISUM_N116_23037.t1|---NA---
APISUM_N116_19297.t1|phage
APISUM_N116_08403.t1|---NA---
APISUM_N116_11675.t1|---NA---
APISUM_N116_05330.t1|---NA---
APISUM_N116_14820.t1|CBHE_COXBU-ame:-Full=
APISUM_N116_24429.t1|DNA-protecting
APISUM_N116_13628.t1|---NA---
APISUM_N116_22731.t1|endodeoxyribonuclease
APISUM_N116_07673.t1|---NA---
APISUM_N116_09764.t1|---NA---
APISUM_N116_08471.t1|conjugal-transfer
APISUM_N116_21064.t1|---NA---
APISUM_N116_11351.t1|---NA---
APISUM_N116_21804.t1|---NA---
APISUM_N116_09747.t1|RTX-family--27
APISUM_N116_24390.t1|parG-family
APISUM_N116_20479.t1|---NA---
APISUM_N116_19922.t1|---NA---
APISUM_N116_00426.t1|---NA---
APISUM_N116_21803.t1|integrase
APISUM_N116_20978.t1|---NA---
APISUM_N116_14403.t1|---NA---
APISUM_N116_22684.t1|Uncharacterised
APISUM_N116_23510.t1|---NA---
APISUM_N116_20736.t1|---NA---
APISUM_N116_21816.t1|---NA---
APISUM_N116_16135.t1|restriction-endonuclease-subunit-M
APISUM_N116_19299.t1|hypothetical-protein
APISUM_N116_20951.t1|---NA---
APISUM_N116_21709.t1|---NA---
APISUM_N116_23835.t1|DNA-binding
APISUM_N116_24555.t1|---NA---
APISUM_N116_13565.t1|---NA---
APISUM_N116_24653.t1|hypothetical-protein
APISUM_N116_22459.t1|hypothetical-protein
APISUM_N116_08560.t1|---NA---
APISUM_N116_07550.t1|---NA---
APISUM_N116_18813.t1|family-transcriptional-regulator
APISUM_N116_08467.t1|---NA---
APISUM_N116_07755.t1|---NA---
APISUM_N116_13573.t1|phage-replication
APISUM_N116_21474.t1|conjugal-transfer
APISUM_N116_20433.t1|---NA---
APISUM_N116_24483.t1|---NA---
APISUM_N116_24325.t1|---NA---
APISUM_N116_18289.t1|4-sulfomuconolactone-hydrolase
APISUM_N116_24312.t1|domain
APISUM_N116_16133.t1|tRNA-modification-GTPase
APISUM_N116_23464.t1|Transposase-and-inactivated-derivatives%2C-family
APISUM_N116_02326.t1|hypothetical-protein
APISUM_N116_23393.t1|integrase
APISUM_N116_08469.t1|DNA-primase
APISUM_N116_08049.t1|---NA---
APISUM_N116_16178.t1|phage-minor-tail
APISUM_N116_21491.t1|---NA---
APISUM_N116_01086.t1|---NA---
APISUM_N116_24599.t1|CBS-transporter-associated-domain-containing
APISUM_N116_08461.t1|lytic-transglycosylase
APISUM_N116_24198.t1|---NA---
APISUM_N116_14708.t1|---NA---
APISUM_N116_10804.t1|hypothetical-protein
APISUM_N116_24025.t1|SIR2-family
APISUM_N116_08458.t1|Crp-Fnr-family-transcriptional-regulator
APISUM_N116_14617.t1|hypothetical-protein
APISUM_N116_09751.t1|DUF3757-domain-containing
APISUM_N116_14615.t1|alpha-related-fimbriae-usher
APISUM_N116_08463.t1|shufflon-system-plasmid-conjugative-transfer-pilus-tip-adhesin
APISUM_N116_10807.t1|GrBNV_gp33-like-protein
APISUM_N116_14616.t1|pilus-assembly
APISUM_N116_01288.t1|---NA---
APISUM_N116_23939.t1|---NA---
APISUM_N116_21547.t1|---NA---
APISUM_N116_10935.t1|---NA---
APISUM_N116_21755.t1|toxin-antitoxin-toxin-family
APISUM_N116_24723.t1|---NA---
APISUM_N116_24676.t1|flagellar-hook-associated
APISUM_N116_24176.t1|Transposase-for-transposon-Tn5
APISUM_N116_11441.t1|---NA---
APISUM_N116_01669.t1|---NA---
APISUM_N116_23607.t1|---NA---
APISUM_N116_16175.t1|Lipase-(class-3)
APISUM_N116_23807.t1|group-II-intron-reverse-transcriptase-maturase
APISUM_N116_14220.t1|---NA---
APISUM_N116_08459.t1|IS5-IS1182-family-transposase
APISUM_N116_10805.t1|---NA---
APISUM_N116_00387.t1|---NA---
APISUM_N116_16715.t1|---NA---
APISUM_N116_02536.t1|---NA---
APISUM_N116_20735.t1|PBSX-family-phage-portal
APISUM_N116_16330.t1|---NA---