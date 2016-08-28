setwd("C:/Users/Kalyan/Documents/Data Science/Set 2")

read.csv("statedata.csv")

statedata <- read.csv("statedata.csv")

summary(statedata)

plot(statedata$x, statedata$y)

tapply(statedata$HS.Grad, statedata$state.region, max)

boxplot(Murder ~ state.region, statedata )

subset(statedata, state.region == "NOrtheast", select = c(state.name, max(Murder)))

t <- lm(Life.Exp ~ Population + Income + Illiteracy + Murder + HS.Grad + Frost + Area, data = statedata)

plot(statedata$Income, statedata$Life.Exp)
