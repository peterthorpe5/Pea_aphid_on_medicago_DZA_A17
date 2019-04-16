import os
import os.path
import os, sys

subdirectories = os.listdir(os.path.abspath("."))

#handle = open("names_wanted.txt","w")
#fastqc_script=open("fastqc_script.txt","w")
workingdir =  os.getcwd()
foldername = os.path.split(workingdir)[-1]
trimmo= open("../" + foldername + "trimmo_script.sh","w")

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
    prefixname = filename.split(".fas")[0]
    prefixname = prefixname[:-2]
    print "\nname =   ", name
    print "\n prefix = ", prefixname
    trim_prefix = prefixname
    if trim_prefix in already_seen_set:
        continue
    else:
        already_seen_set.add(trim_prefix)
    #print trim_prefix
    trimmo.write("cd /home/pt40963/scratch/pea_aphid_RNAseq_20171104/%s/\n" % (foldername))
    #fastqc_script.write("%s_paired.fq.gz " % (prefixname))
    trimmo.write("java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 16 -phred33 %s_1.fastq.gz %s_2.fastq.gz "
         "%s_R1_paired.fq.gz %s_R1_unpaired.fq.gz %s_R2_paired.fq.gz %s_R2_unpaired.fq.gz ILLUMINACLIP:$HOME/TruSeq3-PE.fa:2:15:10 LEADING:3 "
         "TRAILING:3 SLIDINGWINDOW:4:30 MINLEN:55\n\n" \
             %(os.path.join(os.getcwd(), trim_prefix), os.path.join(os.getcwd(), trim_prefix), foldername + "_" + trim_prefix,
               foldername + "_" + trim_prefix, foldername + "_" + trim_prefix, foldername + "_" + trim_prefix))
    count = count+1
    trimmo.write('echo "...........done %d trimmming jobs"\n\n' % count)
    
#handle.close()
#fastqc_script.close()
trimmo.close()
print "Done"
