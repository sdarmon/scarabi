library(Seurat)
library(tximport)

args = commandArgs(trailingOnly=TRUE)

files <- file.path(paste0("results/",args,"/alevin/quants_mat.gz"))

txi <- tximport(files, type="alevin")

pbmc <- CreateSeuratObject(counts = txi$counts , min.cells = 3, min.features = 200, project = "10X_PBMC")

pbmc <- NormalizeData(pbmc, normalization.method = "LogNormalize", scale.factor = 10000)

pbmc <- FindVariableFeatures(pbmc, selection.method = "vst", nfeatures = 2000)

all.genes <- rownames(pbmc)
pbmc <- ScaleData(pbmc, features = all.genes)

pbmc <- RunPCA(pbmc, features = VariableFeatures(object = pbmc))

pbmc <- FindNeighbors(pbmc, dims = 1:10)
pbmc <- FindClusters(pbmc, resolution = 0.5)

pbmc <- RunUMAP(pbmc, dims = 1:10)

DimPlot(pbmc, reduction = "umap")