library(alevinQC)

args = commandArgs(trailingOnly=TRUE)

alevinQCReport(baseDir = paste0("results/",args,"/"),
               sampleId = args, 
               outputFile = paste0(args,".html"), 
               outputFormat = "html_document",
               outputDir = "results/rapportAlevin", forceOverwrite = TRUE)
