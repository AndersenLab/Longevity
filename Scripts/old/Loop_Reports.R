library(knitr)

trials <- 1:3
food_conc <- 2:4

conditions <- data.frame(trials = rep(trials, each = length(food_conc)), food_conc = rep(food_conc, length(trials)))

## To update all reports use this loop. ##

for (i in 1:length(conditions$trials)) {
  j <- conditions$trials[i]
  k <- conditions$food_conc[i]
  knit2html("./Scripts/Food_Optimization_Longevity_Report.Rmd", 
            output = paste("./Results/p0", j, "_", k, "mgmL_Report.html", sep = ""),
            stylesheet = "./Scripts/foghorn_edited.css")
}

## To update just the reports for a specific experiment ##
## set the j variable to the experiment number.         ##

for (i in 1:length(food_conc)) {
  j <- 3
  k <- food_conc[i]
  knit2html("./Scripts/Food_Optimization_Longevity_Report.Rmd", 
            output = paste("./Results/p0", j, "_", k, "mgmL_Report.html", sep = ""),
            stylesheet = "./Scripts/foghorn_edited.css")
}
