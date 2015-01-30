library(knitr)

#add function to determine the number of trials and/or food concentration tests
#files <- dir(path = , plateID, full.names = T)

trials <- 1:3
food_conc <- 2:4

conditions <- data.frame(trials = rep(trials, each = length(food_conc)), food_conc = rep(food_conc, length(trials)))

for (i in 1:length(conditions$trials)) {
  j <- conditions$trials[i]
  k <- conditions$food_conc[i]
  knit2html("./Scripts/Food_Optimization_Longevity_Report.Rmd", 
            output = paste("./Results/p0", j, "_", k, "mgmL_Report.html", sep=""),
            stylesheet = "./Scripts/foghorn_edited.css")
}