library(ggplot2)

PM10Prospect<-read.csv("./Data/DailyPM10Prospect.csv")
PM10Prospect$PROSPECT.PM10.24h.average..µg.m..<-as.numeric(as.character(PM10Prospect$PROSPECT.PM10.24h.average..µg.m..))
PM10Prospect[PM10Prospect$PROSPECT.PM10.24h.average..µg.m.. >50,] #days over 50µg/m3 PM10

PM10Vineyard<-read.csv("./Data/DailyPM10Vineyard.csv")
PM10Vineyard$VINEYARD.PM10.24h.average..µg.m..<-as.numeric(as.character(PM10Vineyard$VINEYARD.PM10.24h.average..µg.m..))
PM10Vineyard[PM10Vineyard$VINEYARD.PM10.24h.average..µg.m.. >50,] #days over 50µg/m3 PM10

PM10StMarys<-read.csv("./Data/DailyPM10StMarys.csv")
PM10StMarys$ST.MARYS.PM10.24h.average..µg.m..<-as.numeric(as.character(PM10StMarys$ST.MARYS.PM10.24h.average..µg.m..))
PM10StMarys[PM10StMarys$ST.MARYS.PM10.24h.average..µg.m.. >50,] #days over 50µg/m3 PM10

airDataProspect<-read.csv("./Data/HourlyAQI.csv")

qplot(x=factor(Time), y = PROSPECT.AQI.hourly.AQI..index., data=airDataProspect, geom="boxplot")
fit<-lm(PROSPECT.AQI.hourly.AQI..index. ~ factor(Time), data = airDataProspect)
summary(fit)$coeff

fit2<-lm(PROSPECT.AQI.hourly.AQI..index. ~ ., data = airDataProspect)
summary(fit2)$coeff

par(mfrow = c(2,2))
plot(fit)

airDataVineyard<-read.csv("./Data/HourlyAQIVineyard.csv")
airDataVineyard$VINEYARD.AQI.hourly.AQI..index. <-as.numeric(as.character(airDataVineyard$VINEYARD.AQI.hourly.AQI..index.))


qplot(x=factor(Time), y = VINEYARD.AQI.hourly.AQI..index., data=airDataVineyard, geom="boxplot")
fit<-lm(VINEYARD.AQI.hourly.AQI..index. ~ factor(Time), data = airDataVineyard)
summary(fit)$coeff

fit2<-lm(VINEYARD.AQI.hourly.AQI..index. ~ ., data = airDataVineyard)
summary(fit2)$coeff

par(mfrow = c(2,2))
plot(fit)

airDataRandwick<-read.csv("./Data/HourlyAQIRandwick.csv")
qplot(x=factor(Time), y = RANDWICK.AQI.hourly.AQI..index., data=airDataRandwick, geom="boxplot")
fit<-lm(RANDWICK.AQI.hourly.AQI..index. ~ factor(Time), data = airDataRandwick)
summary(fit)$coeff

fit2<-lm(RANDWICK.AQI.hourly.AQI..index. ~ ., data = airDataRandwick)
summary(fit2)$coeff

megaData<-airDataProspect




further west site
east site

see if they have different peaks