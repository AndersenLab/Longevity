## This document contains functions for processing the information from the wMicrotracker report files. ##
## It is an updated version compared to wMT_fxns.R that adds an extra step in order to make sure that   ##
## report files will be compatible before analyzing.                                                    ##
## By: Ryan Abdella on 2015-02-12                                                                       ##

# Determines the number of groups from a wMicrotracker Report file #######################################

findNumGroups <- function(file) {
  i <- 1
  while (str_split(read.delim(file, head = FALSE, skip = 6, blank.lines.skip = FALSE)[i,], " ")[[1]][1] != "") {
    i <- i + 1
  }
  return (i - 1)
}

# Pulls out information from wMicrotracker Report file ###################################################

processMicrotrackerReport <- function(file) {
  timeString <- str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]][-1]
  binSize <- as.numeric(timeString[1])
  time <- as.numeric(timeString[length(timeString)])
  numGroups <- findNumGroups(file)
  numBins <- time / binSize
  num <- as.numeric(str_split_fixed(read.delim(file = file, head = FALSE, skip = 6)[1:numGroups, ], " ", (numBins + 1))[ , 2:(numBins + 1)])
  experimentConditions <- data.frame(binSize = binSize, time = time, numGroups = numGroups, numBins = numBins, num = num)
  return(experimentConditions)
}

# Generates the data frame that will be used in the RMarkdown document ###################################

generateDataFrameFromFile <- function(experimentConditions) {
  full <- data.frame(row = rep(rep(rows, 12), experimentConditions$numBins[1]),
                     col = rep(rep(1:12, each = 8), experimentConditions$numBins[1]),
                     time = rep(seq(from = experimentConditions$binSize[1],
                                    to = experimentConditions$time[1],
                                    by = experimentConditions$binSize[1]), each = experimentConditions$numGroups[1]),
                     activity = experimentConditions$num)
  return(full)
}

# Pulls the dates from file names and returns a numeric vector corresponding to the time from worm sorting.

pullDateInformation <- function(fileList) {
  days <- vector(length = length(fileList))
  for (i in 1:length(fileList)) {
    year <- substr(str_split(str_split(fileList[i], "/")[[1]][5], "_")[[1]][1], 1, 4)
    month <- substr(str_split(str_split(fileList[i], "/")[[1]][5], "_")[[1]][1], 5, 6)
    day <- substr(str_split(str_split(fileList[i], "/")[[1]][5], "_")[[1]][1], 7, 8)
    date <- as.Date(paste(year, "-", month, "-", day, sep = ""))
    days[i] = date
  }
  return(days - days[1] + 1)
}
