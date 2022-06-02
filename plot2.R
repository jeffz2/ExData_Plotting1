plot2 <- function(data) {
  png("plot2.png")
  times <- as.POSIXct(paste(data$V1, data$V2), format="%Y-%m-%d %H:%M:%S")
  plot(times, as.numeric(data$V3), type = "l", xlab = "",
       ylab = "Global Active Power (kilowatts)")
  dev.off()
}