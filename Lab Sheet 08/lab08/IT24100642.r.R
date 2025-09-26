setwd("C:\\Users\\Neth\\Desktop\\lab08")

#Q1
data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)
popvar<- var(Weight.kg.)
popvar
popsd

#Q2
samples <- c()
n <-c ()

for (i in 1:25){
  s<- sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

#Q3
s.means <-apply(samples,2,mean)
s.stds <-apply(samples,2,sd)

s.means 
s.stds

samplemean<-mean(s.means)
samplestds<-sd(s.stds)

popmn
samplemean

popvar
samplestds
