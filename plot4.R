source("load_data.R")

plot4 <- function()
{
    data <- load_data()

    # Change locale so functions showing strings (like date & time related) will be shown in English.
    Sys.setlocale("LC_ALL", "English")

    # Make a panel with 4 subplots.
    par(mfrow=c(2,2))

    # Plot #1 (top-left).
    plot(data$Timestamp, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

    # plot #2 (top-right).
    plot(data$Timestamp, data$Voltage, type="l", xlab = "datetime", ylab = "Voltage")

    # Plot #3 (bottom-left).
    plot(data$Timestamp,  data$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
    lines(data$Timestamp, data$Sub_metering_2, type="l", col = "red")
    lines(data$Timestamp, data$Sub_metering_3, type="l", col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.7, bty = "n", lwd = 2, col = c("black", "red", "blue"))

    # Plot #4 (bottom-right).
    plot(data$Timestamp, data$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")

    # Store the results as an image and free resources.
    dev.copy(png, filename = "plot4.png", width = 480, height = 480)
    dev.off()
}
