pollutantmean <- function(directory, pollutant, id = 1:332){
  names <- list.files(path=directory, pattern ="*.csv")
  data<-c()
  for(i in id){
  filename <- sprintf("%03d.csv", i)
  filepath <- paste(directory, filename, sep="/")
  var <- read.csv(filepath)
  column <- var[,pollutant]
  column <- column[!is_na(column)]
  data <-c(data,column)
  }
round(mean(data),3)