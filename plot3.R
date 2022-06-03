plot3 <- function(data) {
  png("plot3.png")
  times <- as.POSIXct(paste(data$V1, data$V2), format="%Y-%m-%d %H:%M:%S")
  plot(times, as.numeric(data$V7), type = "l", xlab = "",
       ylab = "Energy sub metering")
  lines(times, as.numeric(data$V8), type = "l", col = "red")
  lines(times, as.numeric(data$V9), type = "l", col = "blue")
  legend("topright", lty = 1, lwd = 1, col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
}