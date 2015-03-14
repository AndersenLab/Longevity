draw_gompertz <- function(Aparam, Gparam) {
  return((100 * 100 ^ ((Aparam / Gparam) * (1 - exp(Gparam * times)))))
}

draw_weibull <- function(aparam, bparam) {
  return((100 * 100 ^ (-((times / bparam) ^ aparam))))
}

draw_twoplog <- function(bparam, cparam) {
  return((100 / (1 + ((times / cparam) ^ bparam))))
}

draw_threeplog <- function(aparam, bparam, kparam) {
  return((100 * 100 ^ (-bparam * times - (bparam / kparam) * log((aparam + (bparam - aparam) * exp(-kparam * times)) / bparam))))
}

well_gompertz <- function(input, df, row, col) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$row == row & df$col == col])))) - df$norm.activity[df$row == row & df$col == col]) ^ 2)
}

well_weibull <- function(input, df, row, col) {
  sum(((100 * 100 ^ (-((df$day[df$row == row & df$col == col] / input[2]) ^ input[1]))) - df$norm.activity[df$row == row & df$col == col]) ^ 2)
}

well_twoplog <- function(input, df, row, col) {
  sum(((100 / (1 + ((df$day[df$row == row & df$col == col] / input[2]) ^ input[1]))) - df$norm.activity[df$row == row & df$col == col]) ^ 2)
}

well_threeplog <- function(input, df, row, col) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$row == row & df$col == col] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$row == row & df$col == col])) / input[2]))) - df$norm.activity[df$row == row & df$col == col]) ^ 2)
}

well_gompertz_sample <- function(input, df, index, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$index == index & df$strain == strain])))) - df$norm.activity[df$index == index & df$strain == strain]) ^ 2)
}

well_weibull_sample <- function(input, df, index, strain) {
  sum(((100 * 100 ^ (-((df$day[df$index == index & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$index == index & df$strain == strain]) ^ 2)
}

well_twoplog_sample <- function(input, df, index, strain) {
  sum(((100 / (1 + ((df$day[df$index == index & df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$index == index & df$strain == strain]) ^ 2)
}

well_threeplog_sample <- function(input, df, index, strain) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$index == index & df$strain == strain] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$index == index & df$strain == strain])) / input[2]))) - df$norm.activity[df$index == index & df$strain == strain]) ^ 2)
}

well_gompertz_grouping <- function(input, df, grouping, col) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$grouping == grouping & df$col == col])))) - df$norm.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_weibull_grouping <- function(input, df, grouping, col) {
  sum(((100 * 100 ^ (-((df$day[df$grouping == grouping & df$col == col] / input[2]) ^ input[1]))) - df$norm.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_twoplog_grouping <- function(input, df, grouping, col) {
  sum(((100 / (1 + ((df$day[df$grouping == grouping & df$col == col] / input[2]) ^ input[1]))) - df$norm.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_threeplog_grouping <- function(input, df, grouping, col) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$grouping == grouping & df$col == col] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$grouping == grouping & df$col == col])) / input[2]))) - df$norm.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_gompertz_adjusted <- function(input, df, row, col) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$row == row & df$col == col])))) - df$adjusted.activity[df$row == row & df$col == col]) ^ 2)
}

well_weibull_adjusted <- function(input, df, row, col) {
  sum(((100 * 100 ^ (-((df$day[df$row == row & df$col == col] / input[2]) ^ input[1]))) - df$adjusted.activity[df$row == row & df$col == col]) ^ 2)
}

well_twoplog_adjusted <- function(input, df, row, col) {
  sum(((100 / (1 + ((df$day[df$row == row & df$col == col] / input[2]) ^ input[1]))) - df$adjusted.activity[df$row == row & df$col == col]) ^ 2)
}

well_threeplog_adjusted <- function(input, df, row, col) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$row == row & df$col == col] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$row == row & df$col == col])) / input[2]))) - df$adjusted.activity[df$row == row & df$col == col]) ^ 2)
}

well_gompertz_grouping_adjusted <- function(input, df, grouping, col) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$grouping == grouping & df$col == col])))) - df$adjusted.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_weibull_grouping_adjusted <- function(input, df, grouping, col) {
  sum(((100 * 100 ^ (-((df$day[df$grouping == grouping & df$col == col] / input[2]) ^ input[1]))) - df$adjusted.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_twoplog_grouping_adjusted <- function(input, df, grouping, col) {
  sum(((100 / (1 + ((df$day[df$grouping == grouping & df$col == col] / input[2]) ^ input[1]))) - df$adjusted.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

well_threeplog_grouping_adjusted <- function(input, df, grouping, col) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$grouping == grouping & df$col == col] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$grouping == grouping & df$col == col])) / input[2]))) - df$adjusted.activity[df$grouping == grouping & df$col == col]) ^ 2)
}

strain_gompertz <- function(input, df, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$strain == strain])))) - df$norm.activity[df$strain == strain]) ^ 2)
}

strain_weibull <- function(input, df, strain) {
  sum(((100 * 100 ^ (-((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$strain == strain]) ^ 2)
}

strain_twoplog <- function(input, df, strain) {
  sum(((100 / (1 + ((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$norm.activity[df$strain == strain]) ^ 2)
}

strain_threeplog <- function(input, df, strain) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$strain == strain] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$strain == strain])) / input[2]))) - df$norm.activity[df$strain == strain]) ^ 2)
}

strain_gompertz_adjusted <- function(input, df, strain) {
  sum(((100 * 100 ^ ((input[1] / input[2]) * (1 - exp(input[2] * df$day[df$strain == strain])))) - df$adjusted.activity[df$strain == strain]) ^ 2)
}

strain_weibull_adjusted <- function(input, df, strain) {
  sum(((100 * 100 ^ (-((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$adjusted.activity[df$strain == strain]) ^ 2)
}

strain_twoplog_adjusted <- function(input, df, strain) {
  sum(((100 / (1 + ((df$day[df$strain == strain] / input[2]) ^ input[1]))) - df$adjusted.activity[df$strain == strain]) ^ 2)
}

strain_threeplog_adjusted <- function(input, df, strain) {
  sum(((100 * 100 ^ (-input[2] * df$day[df$strain == strain] - (input[2] / input[3]) * log((input[1] + (input[2] - input[1]) * exp(-input[3] * df$day[df$strain == strain])) / input[2]))) - df$adjusted.activity[df$strain == strain]) ^ 2)
}

