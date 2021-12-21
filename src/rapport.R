#Ce script est appelé par le script Bash "rapport.sh" et crée le rapport.
#Il sera stocké dans les dossier "results/rapportAlevin/".

library(alevinQC)

args = commandArgs(trailingOnly=TRUE)

alevinQCReport(baseDir = paste0("results/",args,"/"),
               sampleId = args, 
               outputFile = paste0(args,".html"), 
               outputFormat = "html_document",
               outputDir = "results/rapportAlevin", forceOverwrite = TRUE)
