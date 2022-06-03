plot4 <- function(data) {
  png("plot4.png")
  par(mfrow = c(2,2))
  times <- as.POSIXct(paste(data$V1, data$V2), format="%Y-%m-%d %H:%M:%S")
  plot(times, as.numeric(data$V3), type = "l", xlab = "",
       ylab = "Global Active Power (kilowatts)")
  plot(times, as.numeric(data$V5), type = "l", xlab = "datetime",
       ylab = "Voltage")
  plot(times, as.numeric(data$V7), type = "l", xlab = "",
       ylab = "Energy sub metering")
  lines(times, as.numeric(data$V8), type = "l", col = "red")
  lines(times, as.numeric(data$V9), type = "l", col = "blue")
  legend("topright", lty = 1, lwd = 1, col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         bty = "n")
  plot(times, as.numeric(data$V4), type = "l", xlab = "datetime",
       ylab = "Global_reactive_power")
  dev.off()
}