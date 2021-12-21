# TP de NGS : Scarabi

## Présentation

Ce projet est enregistré (en partie) sur [GitHub](https://github.com/sdarmon/scarabi.git) et consiste à une étude RNA-single cell d'Arabidopsis et ses mutants. Il est composé de plusieurs dossiers : 

### Data :

Dans ce dossier, non présent sur le Git, contient toutes les données brutes. En effet, nous sommes partis des données de séquençage RNA-Seq disponibles dans la base de donnée **GEO database (NCBI)** sous le code d'accès GSE123013. 

### Doc :

Ce dossier, stocké sur le Git, contient le document ```Rapport Analyse.html``` qui explique pas à pas comment analyser les matrices de comptes de façon à obtenir des cartes UMAP annotée et des PseudoTimes de certains types cellulaires (travail effectué lors de la seconde semaine de TP).

### Processed Data :

Ce dossier n'est pas non plus enregistré sur le Git mais lui contient les données issues des traitements de certains programmes mais qui n'ont pas fini d'être traité et que l'on ne souhaite pas stocker sur le git.

### Results :

Ce dossier non enregistré sur le Git, contient les fichiers de sorties des différents programmes utilisés.

### Src :

Dossier des scripts utilisés pendant ce TP, stocké sur le Git. Nous reviendrons par la suite plus en détail le reste du contenu de ce dossier.



## Déroulement du TP

### Première semaine :

L'objectif de cette semaine était d'obtenir les matrices de comptes des cellules pour chaque gène. Pour se faire (et reproduire nos résultats) il suffit d'exectuer les scripts bash (du domaine ```scr```) dans l'ordre suivant :

1. ```download.sh``` : Permet de récupérer les fichiers de séquençage.
2. ```fastqc.sh``` : Permet de lancer **FastQC** sur toutes nos données et d'avoir le quality control.
3. ```multiqc.sh``` : Permet d'avoir un rapport **MultiQC** des données en sortie du **FastQC**.
4. ```alevin.sh``` : Permet la génération de la matrice de compte (en particulier).
5. ```rapport.sh``` : Permet d'obtenir un rapport du programme **Salmon Alevin**.

### Seconde semaine :

Ainsi, pour la seconde semaine nous devions obtenir des cartes UMAP annotés de nos échantillons d'Arabidopsis. Tout le travail effectué est décrit et est reproductible pas à pas dans le document ```Rapport Analyse.html``` du dossier ```doc```. Pour obtenir les données nécessaires, il suffit d'exectuer le script bash ```download_umap.sh``` se trouvant dans le dossier ```scr```.
 

