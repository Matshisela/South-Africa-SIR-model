library(covid19.analytics)
library(tidyverse)

# obtain time series data for global " confirmed " cases
sa_data <- covid19.data("ts-confirmed")

#Total cases in South Africa
tots.per.location(sa_data, geo.loc = "South Africa")

#Trnds 
ts.data <- covid19.data("ts-confirmed")
single.trend(ts.data[ts.data$Country.Region == "South Africa" ,])

# interactive plot of trends
# for all locations and all type of cases
itrends(covid19.data("ts.data"), geo.loc = "South Africa")

# run a SIR model for a given geographical location
generate.SIR.model(sa_data, "South Africa", tot.population =57780000)
