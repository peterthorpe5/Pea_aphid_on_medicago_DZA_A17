import os
import os.path
import os, sys

subdirectories = os.listdir(os.path.abspath("."))

#handle = open("names_wanted.txt","w")
#fastqc_script=open("fastqc_script.txt","w")
workingdir =  os.getcwd()
foldername = os.path.split(workingdir)[-1]
trimmo= open("Pea_aphid_star.sh","w")

#fastqc_script.write("fastqc ")

for directory in subdirectories:
    d=os.getcwd()
    path = [os.path.join(d,o) for o in os.listdir(d) if os.path.isdir(os.path.join(d,o))]
    #print path

count =0

already_seen_set = set([])

trimmo.write('#$ -l hostname="n13*"\n#$ -cwd\n\n')

for filename in os.listdir("."):
    if not filename.endswith("fastq.gz") : continue
    print filename

    name = filename[:]
    workingdir =  os.getcwd()
    foldername = os.path.split(workingdir)[-1]
    prefixname = filename.split("_R")[0]

    trim_prefix = prefixname
    if trim_prefix in already_seen_set:
        continue
    else:
        already_seen_set.add(trim_prefix)
    #print trim_prefix
    trimmo.write("cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/\n")
    #fastqc_script.write("%s_paired.fq.gz " % (prefixname))
    trimmo.write("/home/pt40963/scratch/Downloads/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir star_indicies/ --limitGenomeGenerateRAM 115554136874 --outReadsUnmapped %s_UnMapped --runThreadN 16 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --outFileNamePrefix %s --readFilesIn %s_R1.fastq.gz %s_R2.fastq.gz"  %(trim_prefix,
                                                                                                                                                                                                                                                                             filename.split("_R")[0],
                                                                                                                                                                                                                                                                             trim_prefix,
                                                                                                                                                                                                                                                                             trim_prefix))
    count = count+1
    trimmo.write('\nwait\necho "...........done %d mapping jobs"\n\n' % count)
    
#handle.close()
#fastqc_script.close()
trimmo.close()
print "Done"
