# Example input file to Longevity R Markdown

replicates <- 8
num_bins <- 4
plateID <- "Longevity_2_4"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- 1:12
wellRemove <- data.frame(col = c(), row = c())
#levels(wellRemove$row) <- c("A", "B", "C", "D", "E", "F", "G", "H")