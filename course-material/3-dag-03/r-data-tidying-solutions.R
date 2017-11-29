
#####################
## Exercise 1 ## 
#####################
library(tidyverse)
nba <- data.frame(
player = c("James", "Durant", "Curry", "Harden", "Paul", "Wade"),
team = c("CLEOH", "GSWOAK", "GSWOAK", "HOUTX", "HOUTX", "CLEOH"),
day1points = c("25","23","30","41","26","20"),
day2points = c("24","25","33","45","26","23")
)

nba %>% gather(day, points, c(day1points, day2points))

##################### 
## Exercise 2 ## 
#####################

nba %>% gather( points,day, c(day1points, day2points))

##################### 
## Exercise 3 ## 
#####################

nba %>% gather(day, points, c(day1points, day2points))%>% spread(day, points)

##################### 
## Exercise 4 ## 
#####################

nba %>% gather(day, points, c(day1points, day2points))%>% spread(points, day)


##################### 
## Exercise 5 ## 
#####################

nba %>% gather(day, points, c(day1points, day2points)) %>% separate(col = team, into = c("Team", "State"), sep = 3)


##################### 
## Exercise 6 ## 
#####################

nba %>% gather(day, points, c(day1points, day2points)) %>% separate(col = team, into = c("Team", "State"), sep = 2)

#####################
## Exercise 7 ## 
#####################

nba %>% gather(day, points, c(day1points, day2points)) %>% separate(col = team, into = c("Team", "State"), sep = 3) %>% unite(teamstate, Team, State)

##################### 
## Exercise 8 ## 
#####################

nba %>% gather(day, points, c(day1points, day2points)) %>% separate(col = team, into = c("Team", "State"), sep = 3)
##################### 
## Exercise 9 ## 
#####################


nba %>% gather(day, points, c(day1points, day2points)) %>% separate(col = team, into = c("Team", "State"), sep = 3)%>% ggplot(aes(x = day, y = points)) + geom_point()

####################### 
## Exercise 10 ## 
#####################


nba %>% gather(day, points, c(day1points, day2points)) %>% separate(col = team, into = c("Team", "State"), sep = 3)%>% 
		ggplot(aes(x = day, y = points)) + geom_point()+ facet_wrap(~ Team)
