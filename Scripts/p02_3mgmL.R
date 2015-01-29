# Example input file to Longevity R Markdown

replicates <- 8
data_points_per_day <- 4
plateID <- "Longevity_2_3"
strains <- c("CB4856", "CX11314", "ED3017", "JT11398", "DL238", "N2", "MY23", "JU258", "EG4725",  "LKC34", "JU775", "MY16")
nstrains <- length(strains)
colRemove <- 1:12