plot1 <- function(data) {
  png("plot1.png")
  hist(as.numeric(data$V3), freq = TRUE, col = "red", 
        main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.off()
}