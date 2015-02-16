# Example input file to Longevity R Markdown

replicates <- 8
numBins <- 5
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nStrains <- length(strains)
colRemove <- c(1, 3, 5, 6, 10, 12)
wellRemove <- data.frame(col = c(2, 2, 2, 2, 2, 4, 7, 7, 9, 9, 9, 11, 11), row = c("A", "B", "D", "F", "H", "C", "D", "H", "B", "E", "F", "B", "E"))
levels(wellRemove$row) <- c("A", "B", "C", "D", "E", "F", "G", "H")
