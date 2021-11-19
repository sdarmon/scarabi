#! /bin/bash

cd ~/mydatalocal/scarabi

fastqc -o results/output_fastqc/ -t 6 data/*.fastq.gz