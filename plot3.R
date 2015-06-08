source("load_data.R")

plot3 <- function()
{
    data <- load_data()

    # Change locale so functions showing strings (like date & time related) will be shown in English.
    Sys.setlocale("LC_ALL", "English")

    # Plot the submeterings versus the datetime.
    plot(data$Timestamp,  data$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
    lines(data$Timestamp, data$Sub_metering_2, type="l", col = "red")
    lines(data$Timestamp, data$Sub_metering_3, type="l", col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.8, lwd = 2, col = c("black", "red", "blue"))

    # Store the plot as an image and free resources.
    dev.copy(png, filename = "plot3.png", width = 480, height = 480)
    dev.off()
}
