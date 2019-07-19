
from Bio.Seq import Seq
from Bio.SeqRecord import SeqRecord
from Bio import SeqIO
#os imports
import os
from sys import stdin,argv
import sys
from collections import defaultdict
from optparse import OptionParser

def srip_names(name):
    """func to remove excess in names from GFF"""
    name = name.replace("ID=", "")
    name = name.split(";")[0]
    return name

def saliva_name(filename):
    saliva = set([])
    with open(filename) as handle:
        for line in handle:
            saliva.add(line.split("-")[0])
    return saliva


def effector_name(filename):
    gene_to_effector = defaultdict(str)
    with open(filename) as handle:
        for line in handle:
            data = line.split("\t")
            eff = data[0]
            gene = data[1]
            gene_to_effector[gene] = eff
    return gene_to_effector

def get_new_to_old_names(filename):
    """pre made file using:

    bedtools intersect -wa -wb -a pea_fun_Api.gene.gff3 \
    -b pea_published_gene_cood_only.gff > ACYPI_vs_new.gff
    
    This is so we can use genomic coords to see
    what new gene call corresponds to the old gene call"""
    new_to_old = defaultdict(str)
    with open(filename) as handle:
        for line in handle:
            line = line.rstrip()
            elements = line.split("\t")
            new = elements[8]
            old =  elements[17]
            new = srip_names(new)
            old = srip_names(old) + " "
            new_to_old[new]+= old
    return new_to_old


def name_set(in_names):
    name_set = set([])
    for i in in_names:
        if not i.startswith("#"):
            name_set.add(i)
    return name_set
    

def reformat_as_fasta(in_file, new_to_ACYPI, gene_to_effector,
                      saliva, new_to_Api, out):
    """this function re-write a file as a fasta file, in upper case.
    Get the old to new name
    """
    f_out = open(out, 'w')
    for seq_record in SeqIO.parse(in_file, "fasta"):
        saliva_data = ""
        seq_record.seq = seq_record.seq.upper()
        ACYPI = new_to_ACYPI[seq_record.id.split("-T")[0]]
        Api = new_to_Api[seq_record.id.split("-T")[0]]
        seq_record.description = "| " + seq_record.description.replace(seq_record.id, "")
        ACYPI_saliva = ""
        if ACYPI != "":
            for entry in ACYPI.split():
                if entry in saliva:
                    ACYPI_saliva = ACYPI_saliva + " " + entry
        if ACYPI_saliva != "":
            ACYPI_saliva = "(saliva: Carolan 2009)" + ACYPI_saliva
        effector = gene_to_effector[seq_record.id]

            

        seq_record.description = seq_record.description + " | " + ACYPI  + " | " + Api + " | " + ACYPI_saliva + " | " + effector
        SeqIO.write(seq_record, f_out, "fasta")                    
     
    f_out.close()
    return True



if "-v" in sys.argv or "--version" in sys.argv:
    print("v0.0.1")
    sys.exit(0)


usage = """Use as follows:

trims 20 bp off seq

$ python rewrite_as_fasta.py -i in.fasta -o out.fasta


"""

parser = OptionParser(usage=usage)

parser.add_option("-i", dest="in_file", default="Pea_aphid_PT20190718.fasta",
                  help="current fasta you want to reformat")

parser.add_option("-o", "--out", dest="out", default="Pea_aphid_PT20190718.AA.annotated.fa",
                  help="Output filename",
                  metavar="FILE")
parser.add_option("--gff1", dest="gff1", default="ACYPI_vs_new.gff",
                  help="this is one of the bedtool comparison files",
                  metavar="FILE")
parser.add_option("--gff2", dest="gff2", default="Api_vs_new.gff",
                  help="this is one of the bedtool comparison files",
                  metavar="FILE")





(options, args) = parser.parse_args()

in_file = options.in_file
gff1 =  options.gff1
gff2 =  options.gff2
out = options.out


if __name__ == '__main__':
    # call the main function
    if not os.path.isfile(gff1):
        print("sorry, couldn't open the file: %s" % gff1)
    if not os.path.isfile(gff2):
        print("sorry, couldn't open the file: %s" % gff2)
    saliva = saliva_name("ACYPI_Pea_aphid_secreted_saliva.names")
    # name dicts
    new_to_ACYPI = get_new_to_old_names(gff1)
    new_to_Api = get_new_to_old_names(gff2)

    # effectors
    gene_to_effector = effector_name("bos_vs_newpea.tab")

    reformat_as_fasta(in_file, new_to_ACYPI,gene_to_effector,
                      saliva, new_to_Api, out)


