# Example input file to Longevity R Markdown

replicates <- 8
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
uniqueStrains <- strains
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")
nStrains <- length(strains)
colRemove <- c()
wellRemove <- data.frame(col = c(1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 6, 7, 8, 9, 9, 9, 9, 9, 11, 12), 
                         row = c("H", "A", "B", "D", "E", "F", "G", "E", "G", "H", "A", "D", "F", "D", "A", "C", "D", "E", "F", "G", "G", "E"))

nums <- scan("./Scripts/3mgmL_count.txt", sep = " ")
