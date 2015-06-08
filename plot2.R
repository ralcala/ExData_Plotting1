source("load_data.R")

plot2 <- function()
{
    data <- load_data()

    # Change locale so functions showing strings (like date & time related) will be shown in English.
    Sys.setlocale("LC_ALL", "English")

    # Plot the global active power versus the datetime.
    plot(data$Timestamp, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)", main = "Global Active Power")

    # Store the plot as an image and free resources.
    dev.copy(png, filename = "plot2.png", width = 480, height = 480)
    dev.off()
}
