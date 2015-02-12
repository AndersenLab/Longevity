files <- dir(path = data.loc, plateID, full.names = TRUE)

time_vector <- function(time, bin_size, num_bins) {
  times <- vector()
  for (i in 1:num_bins) {
    times <- c(times, (i * bin_size))
  }
  return(times)
}

find_num_groups <- function(file) {
  #for (i in 1:length(read.delim(file = file, head = F, skip = 5)[[1]]))
  i <- 1
  while (str_split(read.delim(file, head = FALSE, skip = 6, blank.lines.skip = FALSE)[i,], " ")[[1]][1] != "") {
    i <- i + 1
  }
  return (i - 1)
}

## Pulls out information from wMicrotracker Report file ##

processMicrotrackerReport <- function(file) {
  bin_size <- as.numeric(str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]][2])
  time <- as.numeric(str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]][length(str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]])])
  num_groups <- find_num_groups(file)
  num_bins <- time / bin_size
  num <- as.numeric(str_split_fixed(read.delim(file = file, head = FALSE, skip = 6)[1:num_groups, ], " ", 
                                    (num_bins + 1))[ , 2:(num_bins + 1)])
  experiment_conditions <- data.frame(bin_size = bin_size, time = time, num_groups = num_groups, num_bins = num_bins, num = num)
  return(experiment_conditions)
}

## Generates the data frame that will be used in the markdown document ##

generateDataFrameFromFile <- function(experiment_conditions) {
  full <- data.frame(row = rep(rep(c("A", "B", "C", "D", "E", "F", "G", "H"), 12), experiment_conditions$num_bins[1]),
                     col = rep(rep(1:12, each = 8), experiment_conditions$num_bins[1]),
                     time = rep(time_vector(experiment_conditions$time[1], experiment_conditions$bin_size[1], experiment_conditions$num_bins[1]), each = experiment_conditions$num_groups[1]),
                     activity = experiment_conditions$num)
  return(full)
}

getBinSize <- function(df) {
  return(df$bin_size)
}

getTime <- function(df) {
  return(df$time)
}

getNumGroups <- function(df) {
  return(df$num_groups)
}

getNumBins <- function(df) {
  return(df$num_bins)
}