import os
from sys import stdin,argv
def seq_getter(filename1, outfile):
    "opens up a fasta files and prints all names of sequences to a file."
    from Bio.Seq import Seq
    from Bio.SeqRecord import SeqRecord
    from Bio.Alphabet import IUPAC
    from Bio import SeqIO
    f_out = open(outfile, "w")
    
    for seq_record in SeqIO.parse(filename1, "fasta"):
        #DNA_seq = seq_record.seq
        #translated_seq = DNA_seq.translate()
        #print translated_seq
        if len(seq_record.seq) > 1000:
            SeqIO.write(seq_record, f_out, "fasta")

    return True




seq_getter(argv[1],argv[2])
