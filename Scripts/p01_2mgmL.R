# Example input file to Longevity R Markdown

replicates <- 8
num_bins <- 4
plateID <- "Longevity_1_2"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- c(2, 5, 6)
wellRemove <- data.frame(col = c(), row = c())
#levels(wellRemove$row) <- c("A", "B", "C", "D", "E", "F", "G", "H")

#bin_size <- as.numeric(str_split(read.delim(file = data.loc, head = FALSE, skip = 5)[1, ], " ")[[1]][2])
#time <- as.numeric(str_split(read.delim(file = data.loc, head = FALSE, skip = 5)[1, ], " ")
                    #[[1]][length(str_split(read.delim(file = data.loc, head = FALSE, skip = 5)[1, ], " ")[[1]])])
#num_groups <- find_num_groups(data.loc)
#num_bins <- time / bin_size