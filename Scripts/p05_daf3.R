# Example input file to Longevity R Markdown

replicates <- 8
strains <- c("daf-2", "daf-16", "daf-16", "N2", "daf-2", "daf-16", "N2", "N2", "daf-2", "N2", "daf-16", "daf-2")
uniqueStrains <- c("daf-2-1", "daf-16-1", "daf-16-2", "N2-1", "daf-2-2", "daf-16-3", "N2-2", "N2-3", "daf-2-3", "N2-4", "daf-16-4", "daf-2-4")
rows <- c("A", "B", "C", "D", "E", "F", "G", "H")
nStrains <- length(strains)
colRemove <- c()
wellRemove <- data.frame(col = c(1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 11, 12, 12),
                         row = c("B", "F", "B", "B", "C", "F", "G", "H", "D", "B", "C", "D", "F", "F", "D", "B", "F", "G", "H", "H", "G", "F", "D", "A", "A", "B", "D", "F", "F", "E", "C", "B", "H", "F"))

nums <- scan("./Scripts/daf3_count.txt", sep = " ")
