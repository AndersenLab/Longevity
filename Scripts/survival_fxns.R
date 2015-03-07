well_gompertz <- function(input, df, row, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$row == row & df$strain == strain])))) - df$norm.activity[df$row == row & df$strain == strain]) ^ 2)
}

strain_gompertz <- function(input, df, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$strain == strain])))) - df$norm.activity[df$strain == strain]) ^ 2)
}

well_weibull <- function(input, df, row, strain) {
  sum(((100 * 100 ^ (-((df$day[df$row == row & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$row == row & df$strain == strain]) ^ 2)
}

strain_weibull <- function(input, df, strain) {
  sum(((100 * 100 ^ (-((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$strain == strain]) ^ 2)
}

well_twoplog <- function(input, df, row, col) {
  sum(((100 / (1 + ((df$day[df$row == row & df$col == col] / input[2]) ^ input[1]))) - df$norm.activity[df$row == row & df$col == col]) ^ 2)
}

well_twoplog_grouping <- function(input, df, grouping, col) {
  sum(((100 / (1 + ((df$day[df$grouping == grouping & df$col == col] / input[2]) ^ input[1]))) - df$norm.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

strain_twoplog <- function(input, df, strain) {
  if (length(unique(strains)) == length(unique(uniqueStrains))) {
    sum(((100 / (1 + ((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$strain == strain]) ^ 2)
  } else {
    sum(((100 / (1 + ((df$day[df$uniqueStrain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$uniqueStrain == strain]) ^ 2)
  }
}

strain_unique_twoplog <- function(input, df, strain) {
  sum(((100 / (1 + ((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$strain == strain]) ^ 2)
}

well_threeplog <- function(input, df, row, strain) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$row == row & df$strain == strain] - (input[2] / input[3]) * ln((input[1] - (input[2] - input[1]) * exp(-input[3] * df$day[df$row == row & df$strain == strain])) / input[2]))) - df$norm.activity[df$row == row & df$strain == strain]) ^ 2)
}

strain_threeplog <- function(input, df, strain) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$strain == strain] - (input[2] / input[3]) * ln((input[1] - (input[2] - input[1]) * exp(-input[3] * df$day[df$strain == strain])) / input[2]))) - df$norm.activity[df$strain == strain]) ^ 2)
}