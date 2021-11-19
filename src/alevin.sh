#! /bin/bash

#Ce script permet de télécharger le transcriptome dans le dossier data

cd ~/mydatalocal/scarabi

#wget -O data/trans_AtRTD2.fa "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.fa"
#wget -O data/trans_AtRTD2.gtf "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.gtf"

#salmon index -t data/trans_AtRTD2.fa -i processed_data/index_AtRTD2/ -k 31 -p 8

# bioawk -c gff '$feature=="exon" {print $attribute}' < data/trans_AtRTD2.gtf | awk -F ' ' '{print substr($2,2,length($2)-3) "\t" substr($4,2,length($4)-3)}' - > processed_data/txp2gene.tsv

salmon alevin -l ISR -1 data/SRR8257103_1.fastq.gz -2 data/SRR8257103_2.fastq.gz --chromium  -i processed_data/index_AtRTD2/ -p 8 -o results/alevin/ --tgMap processed_data/txp2gene.tsv --dumpFeatures
salmon alevin -l ISR -1 data/SRR8257106_1.fastq.gz -2 data/SRR8257106_2.fastq.gz --chromium  -i processed_data/index_AtRTD2/ -p 8 -o results/alevin_mutant/ --tgMap processed_data/txp2gene.tsv --dumpFeatures