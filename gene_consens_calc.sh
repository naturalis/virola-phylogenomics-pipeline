#!/bin/bash

#Calculate consensus for all genes of each sample.
#Start and stop coordinates of the gene from the reference should be known before this is run i.e. in Geneious
#Change coordinates for different genes of the same sample, change SAMPLE for same gene from another sample. Keep in mind to change output file names.
samtools faidx reference.fasta [ref_fa_header]:[START coord – STOP coord] | bcftools consensus called_[SAMPLE].vcf.gz > [GENE]_[SAMPLE].fasta
