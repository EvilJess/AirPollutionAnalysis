data<-read.csv("./Data/April2015.csv")
data<-rbind(data, read.csv("./Data/May2015.csv"))
data<-rbind(data, read.csv("./Data/June2015.csv"))
data<-rbind(data, read.csv("./Data/July2015.csv"))
data<-rbind(data, read.csv("./Data/August2015.csv"))
data<-rbind(data, read.csv("./Data/September2015.csv"))
data<-rbind(data, read.csv("./Data/October2015.csv"))
data<-rbind(data, read.csv("./Data/November2015.csv"))
data<-rbind(data, read.csv("./Data/December2015.csv"))
data<-rbind(data, read.csv("./Data/January2016.csv"))
data<-rbind(data, read.csv("./Data/February2016.csv"))
data<-rbind(data, read.csv("./Data/March2016.csv"))
data<-rbind(data, read.csv("./Data/April2016.csv"))
head(data)
tail(data)
