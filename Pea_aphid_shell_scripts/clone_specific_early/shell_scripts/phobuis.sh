
cd /home/pt40963/scratch/Pea_aphid/clone_specific
#######
python rewrite_as_fasta.py -i good.good.trinity_Pea_N116_denovo.Trinity.fasta.transdecoder.pep -o temp.fasta

wait

sed -i -e 's/*//g' temp.fasta
//home/pt40963/scratch/Downloads/phobius/phobius.pl -short temp.fasta > good.good.trinity_Pea_N116_denovo.Trinity.fasta.transdecoder.pep.SECRETED



############
python rewrite_as_fasta.py -i good.good.trinity_Pea_PS01_denovo.Trinity.fasta.transdecoder.pep -o temp.fasta

sed -i -e 's/*//g' temp.fasta

//home/pt40963/scratch/Downloads/phobius/phobius.pl -short temp.fasta > good.good.trinity_Pea_PS01_denovo.Trinity.fasta.transdecoder.pep.SECRETED



cd /home/pt40963/scratch/Pea_aphid/clone_specific/both_clones

python rewrite_as_fasta.py -i Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pep -o temp.fasta


wait

sed -i -e 's/*//g' temp.fasta
//home/pt40963/scratch/Downloads/phobius/phobius.pl -short temp.fasta > Pea_PS01_N116_denovo.Trinity.fasta.transdecoder.pep.SECRETED


