#!/bin/bash
#$ -cwd

conda activate orthofinder


 orthofinder -f ~/pea_aphid/clustering -S diamond -t 8




