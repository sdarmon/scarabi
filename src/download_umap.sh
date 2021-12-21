#Ce script permet de télécharger les matrices de compte de plusieurs samples ainsi qu'un fichier "metadata_Li2016.txt" résumant les données.

cd ~/mydatalocal/scarabi/data

mkdir -p ~/mydatalocal/scarabi/data/Counts_Salmon

wget -r --user=tp_ngs --password='Arabido2021!' "https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Salmon/Counts_Salmon" --directory-prefix ~/mydatalocal/scarabi/data/Counts_Salmon/

mv ~/mydatalocal/scarabi/data/Counts_Salmon/flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Salmon/Counts_Salmon/* ~/mydatalocal/scarabi/data/Counts_Salmon

rm -r ~/mydatalocal/scarabi/data/Counts_Salmon/flower.ens-lyon.fr

wget --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/metadata_Li2016.txt -O ~/mydatalocal/scarabi/data/Counts_Salmon/metadata_Li2016.txt
