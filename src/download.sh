#! /bin/bash

# Ce script permet de télécharger les fichiers fastq des runs SRR8257103 SRR8257106 des Series GSE123013.

ech="SRR8257103 SRR8257106"

for i in $ech
do 
parallel-fastq-dump --sra-id SRR8257103 --threads 8 --outdir ../data/ --split-files --gzip
done