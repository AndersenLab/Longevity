# Example input file to Longevity R Markdown

replicates <- 8
strains <- c("N2", "daf-2", "daf-2", "N2", "daf-16", "daf-16", "daf-16", "daf-2", "N2", "daf-2", "N2", "daf-16")
uniqueStrains <- c("N2-1", "daf-2-1", "daf-2-2", "N2-2", "daf-16-1", "daf-16-2", "daf-16-3", "daf-2-3", "N2-3", "daf-2-4", "N2-4", "daf-16-4")
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")
nStrains <- length(strains)
colRemove <- c()
wellRemove <- data.frame(col = c(3), row = c("H"))