# Example input file to Longevity R Markdown

replicates <- 8
num_bins <- 5
plateID <- "Longevity_3_4"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- c(1, 2, 3, 5, 6, 10, 12)
wellRemove <- data.frame(col = c(4, 4, 4, 4, 4, 7, 7, 7, 7, 7, 8, 8, 9, 9, 9, 9, 11, 11, 11, 11), row = c("A", "B", "C", "D", "G", "A", "D", "E", "F", "H", "B", "E", "B", "D", "E", "F", "A", "B", "C", "E"))
levels(wellRemove$row) <- c("A", "B", "C", "D", "E", "F", "G", "H")
