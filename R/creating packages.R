### creating packages
### 19.11.2019
### Jakob Wachter

## prerequisites

# having setup the project before via 
# require(devtools)
# create("E:\\Uni\\1. Semester EAGLE\\Programming and Geostatistics\\MB2")

## writing a function

## documentation

#' Say hello to the eagles
#' 
#' This function says hello to Eagles depending on daytime
#' 
#' @param eagles character. The names of the Eagles to be greeted
#' @param daytime character. optional, either "auto" to calculate daytime or "morning" or "afternoon" or "evening"
#' 
#' @return Nothing, it will just say hello
#' 
#' @importFrom lubridate hour
#' @export 

hello_eagles<- function(eagles, daytime= "auto"){
  
  # decide which time of the day it is
  
  if(daytime == "auto"){
  time<- Sys.time()
  time_hour<- hour(time)
  
  if(time_hour < 12) daytime <-"morning"
  if(time_hour >= 12 & time_hour < 14) daytime <-"day"
  if(time_hour >= 14 & time_hour < 17) daytime <-"afternoon"
  if(time_hour >= 17 & time_hour < 24) daytime <-"evening"
  }  
  
  if(daytime == "morning"){
   greeting<- "Good morning,"
} else if(daytime == "evening"){                        # correct at home
    greeting<- "Good Evening,"
} else if(daytime == "afternoon"){                        # correct at home
  greeting<- "Hi,"
}  else if(daytime == "day"){                        # correct at home
    greeting<- "Hallo,"
} else greeting<-"Hello," 
  paste0(greeting, paste0(eagles, collapse = ","),"!")

}

