#! /bin/bash

#Entrée : Ce programme prend en entrée le nom du dossier alevin que l'on
#         souhaite étudier (soit "alevin" soit "alevin_mutant"")
#Sortie : Ce script permet de lancer l'execution du script R permettant
#         d'obtenir un rapport.

cd ~/mydatalocal/scarabi

mkdir -p results/rapportAlevin

Rscript src/rapport.R ${1}