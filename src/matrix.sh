#! /bin/bash

#Ce script permet de générer le clustering des cellules à partir de la matrice de sortie de alevin et l'enregistre dans le dossier results/plotmatrix

cd ~/mydatalocal/scarabi

mkdir -p results/plotMatrix

#Rscript src/matrix.R ${1}

mv Rplots.pdf results/plotMatrix/matrix_${1}.pdf
