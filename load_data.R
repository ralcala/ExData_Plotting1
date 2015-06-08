library(sqldf)
library(lubridate)

#' Load a dataset to analyze data from home energy consumption.
#'
#' @param  file Filename of the dataset to load.
#' @return The dataset with a computed variable storing the date and time in POSIXct format.
#' @examples
#'  data <- load_data()
load_data <- function(file = "household_power_consumption.txt")
{
    # Read only the necessary data.
    data <- read.csv.sql("household_power_consumption.txt", "SELECT * FROM file WHERE Date IN ('1/2/2007', '2/2/2007')", sep = ";")

    # Transform the date & time string variables into a single new datetime variable.
    data$Timestamp <- dmy(data$Date) + hms(data$Time)

    return(data)
}
