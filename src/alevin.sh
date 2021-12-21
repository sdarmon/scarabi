#! /bin/bash

cd ~/mydatalocal/scarabi

#Ce script permet de télécharger le transcriptome et son annotation map dans le dossier data.

wget -O data/trans_AtRTD2.fa "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.fa"
wget -O data/trans_AtRTD2.gtf "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.gtf"

#Ensuite, à l'aide de Salmon, on crée une table d'index de notre transcriptome.

salmon index -t data/trans_AtRTD2.fa -i processed_data/index_AtRTD2/ -k 31 -p 8

#La ligne suivante permet juste de reformater l'annotation map afin quelle puisse être utilisée par Alevin

bioawk -c gff '$feature=="exon" {print $attribute}' < data/trans_AtRTD2.gtf | awk -F ' ' '{print substr($2,2,length($2)-3) "\t" substr($4,2,length($4)-3)}' - > processed_data/txp2gene.tsv

#Finalement, on a enfin toutes les données pour executer Alevin de Salmon. Cela va généré tout un tas de 
#résultats mais celui qui nous importe le plus est la matrice des comptes des cellules par gène.

salmon alevin -l ISR -1 data/SRR8257103_1.fastq.gz -2 data/SRR8257103_2.fastq.gz --chromium  -i processed_data/index_AtRTD2/ -p 8 -o results/alevin/ --tgMap processed_data/txp2gene.tsv --dumpFeatures
salmon alevin -l ISR -1 data/SRR8257106_1.fastq.gz -2 data/SRR8257106_2.fastq.gz --chromium  -i processed_data/index_AtRTD2/ -p 8 -o results/alevin_mutant/ --tgMap processed_data/txp2gene.tsv --dumpFeatures