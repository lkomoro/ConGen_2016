#!/bin/bash

for file in *.fastq

do

echo $file

sample=`echo $file | cut -f4 -d "_"| cut -f1 -d "."`

echo $sample
bwa mem NCBI_Chelonia_mydas_scaffolds_simple_headers.fasta \
Dcor_RADdemultiplex_RA_"$sample".fastq  \
Dcor_RADdemultiplex_RB_"$sample".fastq \
>"$sample".sam

done
