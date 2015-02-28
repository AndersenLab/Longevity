# Example input file to Longevity R Markdown

replicates <- 8
strains <- c("daf-2", "daf-2", "daf-2", "N2", "N2", "daf-16", "N2", "daf-2", "daf-16", "daf-16", "N2", "daf-16")
uniqueStrains <- c("daf-2-1", "daf-2-2", "daf-2-3", "N2-1", "N2-2", "daf-16-1", "N2-3", "daf-2-4", "daf-16-2", "daf-16-3", "N2-4", "daf-16-4")
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")
nStrains <- length(strains)
colRemove <- c()
wellRemove <- data.frame(col = c(1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5, 5, 5, 6, 8, 10, 11, 11, 11, 11, 11, 12, 12, 12),
                         row = c("A", "B", "G", "C", "B", "A", "B", "C", "D", "B", "A", "B", "E", "D", "D", "A", "C", "D", "F", "G", "H", "E", "D", "C"))