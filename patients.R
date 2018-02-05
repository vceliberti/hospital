##1.    "0.6","103","bad","low","low”
##2.     "0.3","87","bad","low","high”
##3.     "0.4","32","bad","high","low”
##4.      "0.4","42","bad","high","high"
##5.     "0.2","59","good","low","low”
##6.      "0.6","109","good","low","high”
##7.     "0.3","78","good","high","low”
##8.      "0.4","205","good","high","high”
##9.      "0.9","135",”NA","high","high"
##10.    "0.2","176",”bad","high","high”

## creating vectors
Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
bloodp <- c(103,87,32,42,59,109,78,205,135,176)
first <- c(1,1,1,1,0,0,0,0,na.rm=TRUE,1)
second <- c(0,0,1,1,0,0,1,1,1,1)
finaldecision <- c(0,1,0,1,0,1,0,1,1,1)
patients <- list(Freq,bloodp,first,second,finaldecision)
patients


##create boxplot for final decision
boxplot(bloodp~finaldecision, data=patients, main="Blood Pressure & Final decision",
        xlab="Final Decision",ylab="Blood Pressure", col = "darkgreen",names=c('Low','High'))
##creat boxplot for first decision
boxplot(bloodp~first, data = patients, main="Blood Pressure & First decision",
        xlab="First Decision",ylab="Bloos Pressure", col= "darkblue",names=c('good','bad'))
##creat boxplot for second decision
boxplot(bloodp~second, data = patients, main="Blood Pressure & Second decision",
        xlab="Second Decision",ylab="Bloos Pressure", col= "darkred",names=c('Low','High'))

##create histogram
hist(bloodp~finaldecision, main = "Histogram for Blood Pressure", border = "blue")

        
