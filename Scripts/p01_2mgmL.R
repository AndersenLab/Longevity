# Example input file to Longevity R Markdown

replicates <- 8
data_points_per_day <- 4
plateID <- "Longevity_1_2"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- c(2, 5, 6)

#bin_size <- as.numeric(str_split(read.delim(file=data.loc, head=F, skip=5)[1, ], " ")[[1]][2])
#time <- as.numeric(str_split(read.delim(file=data.loc, head=F, skip=5)[1, ], " ")[[1]][length(str_split(read.delim(file=data.loc, head=F, skip=5)[1, ], " ")[[1]])])
#num_groups <- find_num_groups(data.loc)
#num_bins <- time / bin_size