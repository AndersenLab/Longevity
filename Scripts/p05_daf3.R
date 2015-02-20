# Example input file to Longevity R Markdown

replicates <- 8
strains <- c("daf-2", "daf-16", "daf-16", "N2", "daf-2", "daf-16", "N2", "N2", "daf-2", "N2", "daf-16", "daf-2")
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")
nStrains <- length(strains)
colRemove <- c()
wellRemove <- data.frame(col = c(), row = c())
levels(wellRemove$row) <- rows