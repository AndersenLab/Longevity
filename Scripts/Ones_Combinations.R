strain1random <- create.sample.1(1)
strain1.1 <- strain1notNA.df %>% filter(index == strain1random[1, 1])
strain1.2 <- strain1notNA.df %>% filter(index == strain1random[1, 2])
strain1.3 <- strain1notNA.df %>% filter(index == strain1random[1, 3])
strain1.4 <- strain1notNA.df %>% filter(index == strain1random[1, 4])
strain1.5 <- strain1notNA.df %>% filter(index == strain1random[1, 5])
strain1combined <- bind_rows(strain1.1, strain1.2, strain1.3, strain1.4, strain1.5)
strain1combined$replicate <- rep(1:5, each = nFiles)
strain2random <- create.sample.1(2)
strain2.1 <- strain2notNA.df %>% filter(index == strain2random[1, 1])
strain2.2 <- strain2notNA.df %>% filter(index == strain2random[1, 2])
strain2.3 <- strain2notNA.df %>% filter(index == strain2random[1, 3])
strain2.4 <- strain2notNA.df %>% filter(index == strain2random[1, 4])
strain2.5 <- strain2notNA.df %>% filter(index == strain2random[1, 5])
strain2combined <- bind_rows(strain2.1, strain2.2, strain2.3, strain2.4, strain2.5)
strain2combined$replicate <- rep(1:5, each = nFiles)
strain3random <- create.sample.1(3)
strain3.1 <- strain3notNA.df %>% filter(index == strain3random[1, 1])
strain3.2 <- strain3notNA.df %>% filter(index == strain3random[1, 2])
strain3.3 <- strain3notNA.df %>% filter(index == strain3random[1, 3])
strain3.4 <- strain3notNA.df %>% filter(index == strain3random[1, 4])
strain3.5 <- strain3notNA.df %>% filter(index == strain3random[1, 5])
strain3combined <- bind_rows(strain3.1, strain3.2, strain3.3, strain3.4, strain3.5)
strain3combined$replicate <- rep(1:5, each = nFiles)
strain4random <- create.sample.1(4)
strain4.1 <- strain4notNA.df %>% filter(index == strain4random[1, 1])
strain4.2 <- strain4notNA.df %>% filter(index == strain4random[1, 2])
strain4.3 <- strain4notNA.df %>% filter(index == strain4random[1, 3])
strain4.4 <- strain4notNA.df %>% filter(index == strain4random[1, 4])
strain4.5 <- strain4notNA.df %>% filter(index == strain4random[1, 5])
strain4combined <- bind_rows(strain4.1, strain4.2, strain4.3, strain4.4, strain4.5)
strain4combined$replicate <- rep(1:5, each = nFiles)
strain5random <- create.sample.1(5)
strain5.1 <- strain5notNA.df %>% filter(index == strain5random[1, 1])
strain5.2 <- strain5notNA.df %>% filter(index == strain5random[1, 2])
strain5.3 <- strain5notNA.df %>% filter(index == strain5random[1, 3])
strain5.4 <- strain5notNA.df %>% filter(index == strain5random[1, 4])
strain5.5 <- strain5notNA.df %>% filter(index == strain5random[1, 5])
strain5combined <- bind_rows(strain5.1, strain5.2, strain5.3, strain5.4, strain5.5)
strain5combined$replicate <- rep(1:5, each = nFiles)
strain6random <- create.sample.1(6)
strain6.1 <- strain6notNA.df %>% filter(index == strain6random[1, 1])
strain6.2 <- strain6notNA.df %>% filter(index == strain6random[1, 2])
strain6.3 <- strain6notNA.df %>% filter(index == strain6random[1, 3])
strain6.4 <- strain6notNA.df %>% filter(index == strain6random[1, 4])
strain6.5 <- strain6notNA.df %>% filter(index == strain6random[1, 5])
strain6combined <- bind_rows(strain6.1, strain6.2, strain6.3, strain6.4, strain6.5)
strain6combined$replicate <- rep(1:5, each = nFiles)
strain7random <- create.sample.1(7)
strain7.1 <- strain7notNA.df %>% filter(index == strain7random[1, 1])
strain7.2 <- strain7notNA.df %>% filter(index == strain7random[1, 2])
strain7.3 <- strain7notNA.df %>% filter(index == strain7random[1, 3])
strain7.4 <- strain7notNA.df %>% filter(index == strain7random[1, 4])
strain7.5 <- strain7notNA.df %>% filter(index == strain7random[1, 5])
strain7combined <- bind_rows(strain7.1, strain7.2, strain7.3, strain7.4, strain7.5)
strain7combined$replicate <- rep(1:5, each = nFiles)
strain8random <- create.sample.1(8)
strain8.1 <- strain8notNA.df %>% filter(index == strain8random[1, 1])
strain8.2 <- strain8notNA.df %>% filter(index == strain8random[1, 2])
strain8.3 <- strain8notNA.df %>% filter(index == strain8random[1, 3])
strain8.4 <- strain8notNA.df %>% filter(index == strain8random[1, 4])
strain8.5 <- strain8notNA.df %>% filter(index == strain8random[1, 5])
strain8combined <- bind_rows(strain8.1, strain8.2, strain8.3, strain8.4, strain8.5)
strain8combined$replicate <- rep(1:5, each = nFiles)
strain9random <- create.sample.1(9)
strain9.1 <- strain9notNA.df %>% filter(index == strain9random[1, 1])
strain9.2 <- strain9notNA.df %>% filter(index == strain9random[1, 2])
strain9.3 <- strain9notNA.df %>% filter(index == strain9random[1, 3])
strain9.4 <- strain9notNA.df %>% filter(index == strain9random[1, 4])
strain9.5 <- strain9notNA.df %>% filter(index == strain9random[1, 5])
strain9combined <- bind_rows(strain9.1, strain9.2, strain9.3, strain9.4, strain9.5)
strain9combined$replicate <- rep(1:5, each = nFiles)
strain10random <- create.sample.1(10)
strain10.1 <- strain10notNA.df %>% filter(index == strain10random[1, 1])
strain10.2 <- strain10notNA.df %>% filter(index == strain10random[1, 2])
strain10.3 <- strain10notNA.df %>% filter(index == strain10random[1, 3])
strain10.4 <- strain10notNA.df %>% filter(index == strain10random[1, 4])
strain10.5 <- strain10notNA.df %>% filter(index == strain10random[1, 5])
strain10combined <- bind_rows(strain10.1, strain10.2, strain10.3, strain10.4, strain10.5)
strain10combined$replicate <- rep(1:5, each = nFiles)
strain11random <- create.sample.1(11)
strain11.1 <- strain11notNA.df %>% filter(index == strain11random[1, 1])
strain11.2 <- strain11notNA.df %>% filter(index == strain11random[1, 2])
strain11.3 <- strain11notNA.df %>% filter(index == strain11random[1, 3])
strain11.4 <- strain11notNA.df %>% filter(index == strain11random[1, 4])
strain11.5 <- strain11notNA.df %>% filter(index == strain11random[1, 5])
strain11combined <- bind_rows(strain11.1, strain11.2, strain11.3, strain11.4, strain11.5)
strain11combined$replicate <- rep(1:5, each = nFiles)
strain12random <- create.sample.1(12)
strain12.1 <- strain12notNA.df %>% filter(index == strain12random[1, 1])
strain12.2 <- strain12notNA.df %>% filter(index == strain12random[1, 2])
strain12.3 <- strain12notNA.df %>% filter(index == strain12random[1, 3])
strain12.4 <- strain12notNA.df %>% filter(index == strain12random[1, 4])
strain12.5 <- strain12notNA.df %>% filter(index == strain12random[1, 5])
strain12combined <- bind_rows(strain12.1, strain12.2, strain12.3, strain12.4, strain12.5)
strain12combined$replicate <- rep(1:5, each = nFiles)

ones.combined.df <- bind_rows(strain1combined, strain2combined, strain4combined, strain5combined, strain6combined,
                              strain7combined, strain8combined, strain10combined, strain11combined, strain12combined)
ones.combined.df$strain <- rep(c(1:2, 4:8, 10:12), each = 5 * nFiles)

ones.combined.df <- ones.combined.df %>%
  group_by(strain, replicate) %>%
  mutate(norm.activity = 100 * activity / max(activity))


well_ones_params_threeplog.df <- data.frame(strain = rep(c(1:2, 4:8, 10:12), each = 5), 
                                  replicate = rep(1:5, 10), 
                                  aparam = 0, bparam = 0, kparam = 0, minimum = 0)

l = 1

for (k in c(1:2, 4:8, 10:12)) {
  for (j in 1:5) {
    temp <- nlm(well_threeplog_sample, c(0.01, 0.1, 0.06), ones.combined.df, j, k)
    well_ones_params_threeplog.df$aparam[l] <- temp[["estimate"]][1]
    well_ones_params_threeplog.df$bparam[l] <- temp[["estimate"]][2]
    well_ones_params_threeplog.df$kparam[l] <- temp[["estimate"]][3]
    well_ones_params_threeplog.df$minimum[l] <- temp[["minimum"]][1]
    l = l + 1
  }
}


x <- well_fives_params_gompertz.df %>% select(c(strain, Aparam))
x <- params_weibull.df %>% filter(grouping == 5) %>% select(c(strain, aparam))
x$pheno <- x$aparam
x <- x %>% select(c(strain, pheno))
H2.fun(x)

x <- well_fives_params_gompertz.df %>% select(c(strain, Gparam))
x <- params_weibull.df %>% filter(grouping == 5) %>% select(c(strain, bparam))
x$pheno <- x$bparam
x <- x %>% select(c(strain, pheno))
H2.fun(x)

x <- well_fives_params_gompertz.df %>% select(c(strain, kparam))
x$pheno <- x$kparam
x <- x %>% select(c(strain, pheno))
H2.fun(x)

params_gompertz.df <- well_ones_params_gompertz.df %>% bind_rows(well_twos_params_gompertz.df) %>% 
  bind_rows(well_threes_params_gompertz.df) %>%bind_rows(well_fours_params_gompertz.df) %>% 
  bind_rows(well_fives_params_gompertz.df)
params_gompertz.df$grouping <- c(rep(1, 50), rep(2, 55), rep(3, 50), rep(4, 50), rep(5, 45))

minimum_threeplog.df <- params_threeplog.df %>% group_by(grouping) %>% 
  summarize(average = mean(minimum),
            stdev = sd(minimum))

ggplot(minimum_weibull.df) + aes(x = grouping, y = average, size = 2) + geom_line() + 
  labs(x = "Number of Wells Grouped", y = "Average Sum of Residuals Squared", title = "Weibull") + 
  presentation + remove.legend + ylim(0, 4500)

minimum <- minimum_twoplog.df %>% bind_rows(minimum_threeplog.df, minimum_gompertz.df, minimum_weibull.df)
minimum$curve <- rep(c("Two-parameter Logistic", "Three-parameter Logistic", "Gompertz", "Weibull"), each = 5)

ggplot(minimum) + geom_line(aes(x = grouping, y = average, color = curve, size = 2)) + 
  geom_errorbar(aes(x = grouping, ymin = average - stdev, ymax = average + stdev, color = curve, width= 0.3, size = 2,
                    alpha = 0.6)) + labs(x = "Number of Wells Grouped", y = "Average Sum of Residuals Squared") + 
  presentation + big.legend + guides(size = FALSE, alpha = FALSE)

ggplot(params_gompertz.df) + aes(x = factor(grouping), y = minimum) + geom_boxplot() + scale_color_manual(values=cbPalette) + geom_jitter(color = params_gompertz.df$strain) + ylim(0, 10000) + labs(title = "Gompertz")
ggplot(params_weibull.df) + aes(x = factor(grouping), y = minimum) + geom_boxplot() + geom_jitter(color = params_weibull.df$strain) + ylim(0, 10000) + labs(title = "Weibull")
ggplot(params_twoplog.df) + aes(x = factor(grouping), y = minimum) + geom_boxplot() + geom_jitter(color = params_twoplog.df$strain) + ylim(0, 10000) + labs(title = "Two-Parameter Logistic")
ggplot(params_threeplog.df) + aes(x = factor(grouping), y = minimum) + geom_boxplot() + geom_jitter(color = params_threeplog.df$strain) + ylim(0, 10000) + labs(title = "Three-Parameter Logistic")

cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
