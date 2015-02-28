# Example input file to Longevity R Markdown

replicates <- 8
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
uniqueStrains <- strains
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")
nStrains <- length(strains)
colRemove <- c(1, 2, 4, 6, 7, 12)
wellRemove <- data.frame(col = c(), row = c())
