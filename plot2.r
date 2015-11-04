##Base Plot #2

source("load_data.R")

plot2 <- function(data = NULL){
     
     if (is.null(data))
          data <- load_data()
     x <- data$Time
     y <- data$Global_active_power
     
     png(file = "plot2.png", height = 480, width = 480)
     plot(x, y, xlab = "", ylab = "Global Active Power (Kilowatts)",
          main = "", type = "l")
     dev.off()
}
