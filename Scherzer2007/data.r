suppressPackageStartupMessages({
  library(Biobase)
  library(GEOquery)
})

# Grab data from GEO
gset <- getGEO("GSE6613", GSEMatrix = TRUE)[[1]]

# Normalize
norm_gset <- vsn::vsn2(gset)
X <- exprs(norm_gset)

# Annotate
gpl <- annotation(gset)
platform <- getGEO(gpl, AnnotGPL = TRUE)
gene_info <- data.frame(attr(dataTable(platform), "table"))
rownames(X) <- gene_info$Gene.Symbol |> janitor::make_clean_names()
X <- t(X)

# Outcome
y <- grepl('arkinson', pData(gset)$characteristics_ch1)

# Save
saveRDS(list(X = X, y = y), file = 'Scherzer2007.rds')
