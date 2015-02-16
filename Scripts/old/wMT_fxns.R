#Functions for processing wMicrotracker data

library("plyr")
library("stringr")
#library("reshape2")


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

processMicrotrackerReport <- function(file) {
  bin_size <- as.numeric(str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]][2])
  time <- as.numeric(str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]][length(str_split(read.delim(file = file, head = FALSE, skip = 5)[1, ], " ")[[1]])])
  num_groups <- find_num_groups(file)
  num_bins <- time / bin_size
  num <- as.numeric(str_split_fixed(read.delim(file = file, head = FALSE, skip = 6)[1:num_groups, ], " ", 
                                    (num_bins + 1))[ , 2:(num_bins + 1)])
  full <- data.frame(row = rep(rep(c("A", "B", "C", "D", "E", "F", "G", "H"), 12), num_bins),
                     col = rep(rep(1:12, each = 8), num_bins),
                     time = rep(time_vector(time, bin_size, num_bins), each = num_groups),
                     activity = num)
  return(full)
}

#Read in number sorted from procSetup function

#Function to read in txt file from sorter
readSorter <- function(file, tofmin=20, tofmax=2000, extmin=20, extmax=5000)  {
  data<-read.delim(file=file, header=T, na.strings=c("n/a"), as.is=T, stringsAsFactors=F)
  data<-data[!is.na(data$TOF),]
  data<-data[,!is.na(data[1,])]
  data<-data[data$TOF>=tofmin,]
  data<-data[data$EXT>=extmin,]
  data<-data[data$TOF<=tofmax,]
  data<-data[data$EXT<=extmax,]
  data$Column<-as.factor(data$Column)
  data$Row<-as.factor(data$Row)
  return(data)
}

#Function to extract sorter files from the L4 sort setup
procSetup <- function(file, tofmin=20, tofmax=2000, extmin=20, extmax=5000) {
  require(plyr)
  plate <- readSorter(file, tofmin, tofmax, extmin)
  modplate <- with(plate, data.frame(row=Row, col=as.factor(Column), 
                                     sort = Status.sort, TOF=TOF, EXT=EXT, 
                                     time=Time.Stamp, green=Green, yellow=Yellow, 
                                     red=Red))
    proc <- ddply(.data=modplate[modplate$row %in% c("A","B","C","D","E","F","G", "H"),], .var=c("row", "col"), .drop=F, .fun=function(x){
    c(pop = length(x$EXT), sorted = sum(x$sort==6), TOF = mean(x$TOF), EXT = mean(x$EXT))
  })
  return(proc)
  }