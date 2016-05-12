#read and combine the individual .csv files into one weatherDataframe "weatherData"
weatherData<-read.csv("./Data/April2015.csv")
weatherData<-rbind(weatherData, read.csv("./Data/May2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/June2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/July2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/August2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/September2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/October2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/November2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/December2015.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/January2016.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/February2016.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/March2016.csv"))
weatherData<-rbind(weatherData, read.csv("./Data/April2016.csv"))
write.csv(weatherData, file = "./Data/DailyWeather.csv")



