load("/Users/kyledennis/Desktop/Time Series/Project/crime.RData")

library(dplyr)
library(astsa)


dailyCrime = crime %>%
  group_by(date) %>%
  summarize(Freq=n())

dailyCrime = ts(dailyCrime)

#remove days without complete entries
dailyCrime <- dailyCrime[-c(1,7033,7034),]

par(mfrow=c(1,1))
tsplot(dailyCrime[,2])
acf1(dailyCrime[,2],20, main="")

#basic linear model of daily crime
linear <- lm(dailyCrime[,2]~dailyCrime[,1])
plot(residuals(linear))
qqnorm(residuals(linear))
qqline(residuals(linear))

tsplot(diff(dailyCrime[,2]))
acf1(diff(dailyCrime[,2]))
lag1.plot(dailyCrime[,2],20)


test<-dailyCrime[-1,]

#tells how many instances of each crime
sort(table(crime[,2]))

carTheft <- crime[crime[,2]=="BURGLARY OF VEHICLE",]
carTheft = carTheft %>%
  group_by(date) %>%
  summarize(Freq=n())
carTheft <- ts(carTheft)


#days where no crime is reported are not in dataset so we add them
DateRange <- seq(min(carTheft[,1]), max(carTheft[,1]), by = 1)
missing <- DateRange[!DateRange %in% carTheft[,1]]
cbind(missing, rep(0,length(missing)))
carTheft <- rbind(carTheft,cbind(missing, rep(0,length(missing))))
carTheft<- carTheft[order(carTheft[,1]),]
carTheft <- ts(carTheft)

tsplot(carTheft[,2])
acf1(carTheft[,2],1000)



assault <- crime[crime[,2]=="ASSAULT WITH INJURY",]
assault = assault %>%
  group_by(date) %>%
  summarize(Freq=n())
assault <- ts(assault)

#days where no crime is reported are not in dataset
DateRange <- seq(min(assault[,1]), max(assault[,1]), by = 1)
missing <- DateRange[!DateRange %in% assault[,1]]
cbind(missing, rep(0,length(missing)))
assault <- rbind(assault,cbind(missing, rep(0,length(missing))))
assault<- assault[order(assault[,1]),]
assault <- ts(assault)

tsplot(log(dailyCrime[,2]))

var(dailyCrime[4001:5000,2])
