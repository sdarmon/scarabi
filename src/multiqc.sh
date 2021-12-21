#! /bin/bash

#L'execution de ce script sur les données de sorties de FastQC
#(en entrée le dossier suffit) permet d'avoir un rapport MultiQC
#des données traitées

cd ~/mydatalocal/scarabi

multiqc -o results/output_multidata/ results/output_fastqc/