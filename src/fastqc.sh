#! /bin/bash

cd ~/mydatalocal/scarabi

fastqc -o results/ -t 6 data/*.fastq.gz