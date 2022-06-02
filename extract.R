extract <- function() {
  data <- read.table("household_power_consumption.txt", sep = ";")
  data$V1 <- as.Date(data$V1, format = "%d/%m/%Y", optional = TRUE)
  dates <- as.Date(c("2007-02-01", "2007-02-02"), format = "%Y-%m-%d")
  d1 <- subset(data, data$V1 - dates[1] == 0) 
  d2 <- subset(data, data$V1 - dates[2] == 0)
  data <- rbind(d1, d2)
}