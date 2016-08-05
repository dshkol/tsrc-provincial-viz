# Treemap

devtools::install_github("gluc/data.tree")
devtools::install_github("timelyportfolio/d3treeR")
library(readr)
library(treemap)
library(d3treeR)

prov_exp <- read_csv("provincial-overnight-expenditures.csv")


tm <-treemap(prov_exp,
             index=c("Province","Type"),
             vSize="Expenditure",
             vColor="Province",
             type="categorical")

d3tree2(tm, rootname = "Province")
