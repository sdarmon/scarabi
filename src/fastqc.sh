#! /bin/bash

#Ce sript permet de lancer FastQC sur toutes nos données (du format fastq.gz), permettant d'avoir un quality control.

cd ~/mydatalocal/scarabi

fastqc -o results/output_fastqc/ -t 6 data/*.fastq.gz