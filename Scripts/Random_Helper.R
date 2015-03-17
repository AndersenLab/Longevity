create.sample <- function(strain, numbers, nchoose) {
  if (as.numeric(numbers[strain]) >= 5) {
    x <- sample(1:numbers[strain], 5, replace = FALSE)
    temp <- as.data.frame(combn(numWells.df$number[strain], nchoose))
    names(temp) <- 1:numbers[strain]
    temp <- temp[ , x]
  } else {
    temp <- NA
  }
  return(temp)
}

create.sample.1 <- function(strain) {
  if (as.numeric(numWells.df$pickones[strain]) >= 5) {
    x <- sample(1:numWells.df$pickones[strain], 5, replace = FALSE)
    temp <- as.data.frame(combn(numWells.df$number[strain], 1))
    names(temp) <- 1:numWells.df$pickones[strain]
    temp <- temp[ , x]
  } else {
    temp <- NA
  }
  return(temp)
}

create.sample.2 <- function(strain) {
  if (as.numeric(numWells.df$picktwos[strain]) >= 5) {
    x <- sample(1:numWells.df$picktwos[strain], 5, replace = FALSE)
    temp <- as.data.frame(combn(numWells.df$number[strain], 2))
    names(temp) <- 1:numWells.df$picktwos[strain]
    temp <- temp[ , x]
  } else {
    temp <- NA
  }
  return(temp)
}

create.sample.3 <- function(strain) {
  if (as.numeric(numWells.df$pickthrees[strain]) >= 5) {
    x <- sample(1:numWells.df$pickthrees[strain], 5, replace = FALSE)
    temp <- as.data.frame(combn(numWells.df$number[strain], 3))
    names(temp) <- 1:numWells.df$pickthrees[strain]
    temp <- temp[ , x]
  } else {
    temp <- NA
  }
  return(temp)
}

create.sample.4 <- function(strain) {
  if (as.numeric(numWells.df$pickfours[strain]) >= 5) {
    x <- sample(1:numWells.df$pickfours[strain], 5, replace = FALSE)
    temp <- as.data.frame(combn(numWells.df$number[strain], 4))
    names(temp) <- 1:numWells.df$pickfours[strain]
    temp <- temp[ , x]
  } else {
    temp <- NA
  }
  return(temp)
}

create.sample.5 <- function(strain) {
  if (as.numeric(numWells.df$pickfives[strain]) >= 5) {
    x <- sample(1:numWells.df$pickfives[strain], 5, replace = FALSE)
    temp <- as.data.frame(combn(numWells.df$number[strain], 5))
    names(temp) <- 1:numWells.df$pickfives[strain]
    temp <- temp[ , x]
  } else {
    temp <- NA
  }
  return(temp)
}

combine.two <- function(df, combinations) {
  temp <- df %>%
    filter(index == combinations[1])
  temp2 <- df %>%
    filter(index == combinations[2])
  inter <- bind_rows(temp, temp2)
  inter <- inter %>% group_by(day) %>% summarize(activity = mean(activity))
  return(inter)
}

combine.three <- function(df, combinations) {
  temp <- df %>%
    filter(index == combinations[1])
  temp2 <- df %>%
    filter(index == combinations[2])
  temp3 <- df %>%
    filter(index == combinations[3])
  inter <- bind_rows(temp, temp2, temp3)
  inter <- inter %>% group_by(day) %>% summarize(activity = mean(activity))
  return(inter)
}

combine.four <- function(df, combinations) {
  temp <- df %>%
    filter(index == combinations[1])
  temp2 <- df %>%
    filter(index == combinations[2])
  temp3 <- df %>%
    filter(index == combinations[3])
  temp4 <- df %>%
    filter(index == combinations[4])
  inter <- bind_rows(temp, temp2, temp3, temp4)
  inter <- inter %>% group_by(day) %>% summarize(activity = mean(activity))
  return(inter)
}

combine.five <- function(df, combinations) {
  temp <- df %>%
    filter(index == combinations[1])
  temp2 <- df %>%
    filter(index == combinations[2])
  temp3 <- df %>%
    filter(index == combinations[3])
  temp4 <- df %>%
    filter(index == combinations[4])
  temp5 <- df %>%
    filter(index == combinations[5])
  inter <- bind_rows(temp, temp2, temp3, temp4, temp5)
  inter <- inter %>% group_by(day) %>% summarize(activity = mean(activity))
  return(inter)
}

well_twoplog_sample <- function(input, df, replicate, strain) {
  sum(((100 / (1 + ((df$day[df$replicate == replicate & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$replicate == replicate & df$strain == strain]) ^ 2)
}

well_gompertz_sample <- function(input, df, replicate, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$replicate == replicate & df$strain == strain])))) - df$norm.activity[df$replicate == replicate & df$strain == strain]) ^ 2)
}

well_weibull_sample <- function(input, df, replicate, strain) {
  sum(((100 * 100 ^ (-((df$day[df$replicate == replicate & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$replicate == replicate & df$strain == strain]) ^ 2)
}

well_threeplog_sample <- function(input, df, replicate, strain) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$replicate == replicate & df$strain == strain] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$replicate == replicate & df$strain == strain])) / input[2]))) - df$norm.activity[df$replicate == replicate & df$strain == strain]) ^ 2)
}

strain1.df <- well.df %>% filter(strain == strains[1])
strain1.df$index <- rep(1:8, each = nFiles)
strain2.df <- well.df %>% filter(strain == strains[2])
strain2.df$index <- rep(1:8, each = nFiles)
strain3.df <- well.df %>% filter(strain == strains[3])
strain3.df$index <- rep(1:8, each = nFiles)
strain4.df <- well.df %>% filter(strain == strains[4])
strain4.df$index <- rep(1:8, each = nFiles)
strain5.df <- well.df %>% filter(strain == strains[5])
strain5.df$index <- rep(1:8, each = nFiles)
strain6.df <- well.df %>% filter(strain == strains[6])
strain6.df$index <- rep(1:8, each = nFiles)
strain7.df <- well.df %>% filter(strain == strains[7])
strain7.df$index <- rep(1:8, each = nFiles)
strain8.df <- well.df %>% filter(strain == strains[8])
strain8.df$index <- rep(1:8, each = nFiles)
strain9.df <- well.df %>% filter(strain == strains[9])
strain9.df$index <- rep(1:8, each = nFiles)
strain10.df <- well.df %>% filter(strain == strains[10])
strain10.df$index <- rep(1:8, each = nFiles)
strain11.df <- well.df %>% filter(strain == strains[11])
strain11.df$index <- rep(1:8, each = nFiles)
strain12.df <- well.df %>% filter(strain == strains[12])
strain12.df$index <- rep(1:8, each = nFiles)

strain1notNA.df <- strain1.df %>% filter(is.na(activity) != TRUE)
strain2notNA.df <- strain2.df %>% filter(is.na(activity) != TRUE)
strain3notNA.df <- strain3.df %>% filter(is.na(activity) != TRUE)
strain4notNA.df <- strain4.df %>% filter(is.na(activity) != TRUE)
strain5notNA.df <- strain5.df %>% filter(is.na(activity) != TRUE)
strain6notNA.df <- strain6.df %>% filter(is.na(activity) != TRUE)
strain7notNA.df <- strain7.df %>% filter(is.na(activity) != TRUE)
strain8notNA.df <- strain8.df %>% filter(is.na(activity) != TRUE)
strain9notNA.df <- strain9.df %>% filter(is.na(activity) != TRUE)
strain10notNA.df <- strain10.df %>% filter(is.na(activity) != TRUE)
strain11notNA.df <- strain11.df %>% filter(is.na(activity) != TRUE)
strain12notNA.df <- strain12.df %>% filter(is.na(activity) != TRUE)

numWells.df <- data.frame(strain = 1:12, number = 0, pickones = 0, picktwos = 0,
                          pickthrees = 0, pickfours = 0, pickfives = 0, picksixes = 0,
                          picksevens = 0, pickeights = 0)

strain1sample <- unique(strain1notNA.df$index)
numWells.df$number[1] <- length(strain1sample)
strain2sample <- unique(strain2notNA.df$index)
numWells.df$number[2] <- length(strain2sample)
strain3sample <- unique(strain3notNA.df$index)
numWells.df$number[3] <- length(strain3sample)
strain4sample <- unique(strain4notNA.df$index)
numWells.df$number[4] <- length(strain4sample)
strain5sample <- unique(strain5notNA.df$index)
numWells.df$number[5] <- length(strain5sample)
strain6sample <- unique(strain6notNA.df$index)
numWells.df$number[6] <- length(strain6sample)
strain7sample <- unique(strain7notNA.df$index)
numWells.df$number[7] <- length(strain7sample)
strain8sample <- unique(strain8notNA.df$index)
numWells.df$number[8] <- length(strain8sample)
strain9sample <- unique(strain9notNA.df$index)
numWells.df$number[9] <- length(strain9sample)
strain10sample <- unique(strain10notNA.df$index)
numWells.df$number[10] <- length(strain10sample)
strain11sample <- unique(strain11notNA.df$index)
numWells.df$number[11] <- length(strain11sample)
strain12sample <- unique(strain12notNA.df$index)
numWells.df$number[12] <- length(strain12sample)

strain1notNA.df$index <- rep(1:numWells.df$number[1], each = nFiles)
strain2notNA.df$index <- rep(1:numWells.df$number[2], each = nFiles)
strain3notNA.df$index <- rep(1:numWells.df$number[3], each = nFiles)
strain4notNA.df$index <- rep(1:numWells.df$number[4], each = nFiles)
strain5notNA.df$index <- rep(1:numWells.df$number[5], each = nFiles)
strain6notNA.df$index <- rep(1:numWells.df$number[6], each = nFiles)
strain7notNA.df$index <- rep(1:numWells.df$number[7], each = nFiles)
strain8notNA.df$index <- rep(1:numWells.df$number[8], each = nFiles)
strain9notNA.df$index <- rep(1:numWells.df$number[9], each = nFiles)
strain10notNA.df$index <- rep(1:numWells.df$number[10], each = nFiles)
strain11notNA.df$index <- rep(1:numWells.df$number[11], each = nFiles)
strain12notNA.df$index <- rep(1:numWells.df$number[12], each = nFiles)

for (j in 1:8) {
  for (i in 1:nrow(numWells.df)) {
    temp <- try(combn(numWells.df$number[i], j))
    if (is.null(ncol(temp)) == TRUE) {
      numWells.df[[j + 2]][i] <- 0
    } else {
      numWells.df[[j + 2]][i] <- ncol(temp)
    }
  }
}
