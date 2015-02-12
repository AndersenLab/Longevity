# Input file to Longevity R Markdown

replicates <- 8
num_bins <- 5
plateID <- "Longevity_3_2"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- c(1, 3, 5, 6, 10, 12)
wellRemove <- data.frame(col = c(), row = c())
#levels(wellRemove$row) <- c("A", "B", "C", "D", "E", "F", "G", "H")

files <- dir(path = data.loc, plateID, full.names = TRUE)

