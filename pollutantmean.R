##change the directory where your project is saved


Init <- function(workDirStr = "C:\\Users\\Administrator\\R-Assignment 1\\rprog-data-specdata") {
        setwd(workDirStr)
}


pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        id <- as.integer(id)
        pollutant <- as.character(pollutant)
        directory <- as.character(directory)
       ##setwd(paste("./", directory, sep= ""))
        x <-c()
        for (i in id) {
                if (i < 10){
                        z <-paste("00", i, sep="")
                }else if (10 <= i && i < 100){
                        z <- paste(0, i, sep ="")
                }else {
                        z <- as.character(i)
                }
                data <- read.csv(paste(z, ".csv", sep =""))
                if (pollutant == "sulfate"){
                        y <- c(data[,2])
                } else if (pollutant == "nitrate") {
                        y <- c(data[,3])
                }
                x <- c(x, y)
        }
        mean_data <- mean (x, na.rm = TRUE)
        round(mean_data, 3)
}
