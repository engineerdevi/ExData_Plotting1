##Base Plot #3

source("load_data.R")

plot3 <- function (data = NULL){

     if (is.null(data))
          data <- load_data()
     
     png(file = "plot3.png", height = 480, width = 480)
     plot(data$Time, data$Sub_metering_1, type = "l", col = "black",
         xlab = "", ylab = "Energy sub metering")
    lines(data$Time, data$Sub_metering_2, col = "red")
    lines(data$Time, data$Sub_metering_3, col = "blue")
    legend("topright",col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)

    dev.off()
}