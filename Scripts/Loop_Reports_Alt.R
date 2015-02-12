## Alternate Loop Reports ##

library("knitr")

experiments.file <- dir(path = "./Scripts", "p0", full.names = TRUE)

for (i in 1:length(experiments.file)) {
  conditions <- str_split(str_split(str_split(experiments.file[9], "/p")[[1]][2], "mgmL")[[1]][1], "_")
  j <- conditions[[1]][1]
  k <- conditions[[1]][2]
  experiment_name <- str_split(str_split(experiments.file[9], "Scripts/")[[1]][2], ".R")[[1]][1]
  knit2html("./Scripts/Food_Optimization_Longevity_Report_Alt.Rmd", 
            output = paste("./Results/", experiment_name, "_Report.html", sep = ""),
            stylesheet = "./Scripts/foghorn_edited.css")
}
