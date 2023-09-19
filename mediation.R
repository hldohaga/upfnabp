

df <-data.frame(ndns_1_11[c(Na,Age,zPF,omsysval,SurveyYear,educfinh),])
str(df)

process(model = 7,y= "omsysval",x="Age", m=c("zPF"),w="Na",boot=1000,seed = 12345,conf=95,data = df )

process(model = 7,y= "Na",x="zPF", m="omsysval",w="Age",boot=1000,seed = 12345,conf=95,data = df, centre = 2,)


library(rosetta)
gmod<-gemm(data=df,xvar="Age",yvar="omsysval",mvars = c("zPF","Na"), mymod = "Sex",nboot = 1000)
plotIMM(gmod)


#library(mediation)
#set.seed(2014)
#ndns_1_11r<- ndns_1_11r[,,..na.omit]
#ndns_1_11med <- select(ndns_1_11,hiNa,Sex,BMI,agegad3,educfinh,IMD,SurveyYear,hyp)

#med.fit<- glm(Na ~  Age +bmival , df , na.action = na.omit, family= gaussian)

#ndns_1_11na$variables

#Sodium only
#out.fit <- glm( omsysval ~ Na  +Age + bmival,family = gaussian, df,na.action = na.omit)

#med.out <- mediate(med.fit, out.fit, treat = "Age", mediator = "Na", robustSE = TRUE, sims = 100)
#summary(med.out)


library(lavaan)
example(cfa)
