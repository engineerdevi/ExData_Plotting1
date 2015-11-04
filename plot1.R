##Base Plot #1

source("load_data.R")

plot1 <- function(data = NULL){
     
     if (is.null(data))
         data <- load_data()
    
     plot_data <- (data$Global_active_power)
     png(file = "plot1.png", height = 480, width = 480)
     hist(plot_data, col="red", 
          xlab = "Global Active Power(Kilowatts)",
          ylab = "Frequency",
          main =  "Global Active Power") 
     dev.off()
}
