cd /home/pt40963/scratch/pea_aphid_genomes/N116
 source ~/misc_python/THAPBI/THAPBI-pycits/venv-THAPBI-pycits-py3/bin/activate

python /home/pt40963/public_scripts/TransStart/TransStart.py --walk 5 --interation_value 1 -g A.pisum_N116.genome.v1.0.fasta --gff ./rename/N116.masked_pea_aphid_masked_models201801801.Proper_names.gff -b sorted.bam -o TransStart_walk5.txt

python /home/pt40963/public_scripts/TransStart/TransStart.py --walk 3 --interation_value 1 -g A.pisum_N116.genome.v1.0.fasta --gff ./rename/N116.masked_pea_aphid_masked_models201801801.Proper_names.gff -b sorted.bam -o TransStart_walk3.txt
