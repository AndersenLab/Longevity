# Example input file to Longevity R Markdown

replicates <- 8
data_points_per_day <- 5
plateID <- "Longevity_3_3"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- c(1, 3, 5, 6, 10, 12)