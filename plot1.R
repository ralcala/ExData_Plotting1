source("load_data.R")

#' Plot the histogram of the global active power.
#'
#' @examples
#'  plot1()
plot1 <- function()
{
    data <- load_data()

    # Plot the histogram.
    hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

    # Store the histogram as an image and free resources.
    dev.copy(png, filename = "plot1.png", width = 480, height = 480)
    dev.off()
}
