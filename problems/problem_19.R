
# Problem 19 --------------------------------------------------------------


# You are given the following information, but you may prefer to 
# do some research for yourself.
# 
# 1 Jan 1900 was a Monday. 
# Thirty days has September, April, June and November.
# All the rest have thirty-one,
# Saving February alone, Which has twenty-eight, rain or shine. 
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century 
# unless it is divisible by 400.
# 
# How many Sundays fell on the first of the month during 
# the twentieth century (1 Jan 1901 to 31 Dec 2000)?


# how many Sundays happened on the first day of the month 
# between 1901 and 2000?

# first of all if today is sunday I need to find out what day of the week
# was first January of 1901 for this I need to find out how many days
# ago this year has occurred

years <- 1901:2023

df <- data.frame( years = years, leap_classification = ifelse( years %% 4 == 0, "leap", "not leap" ) )

df$n_days <- ifelse( df$leap_classification == "leap", 366, 365 ) 

# I am on 2023 19th February which is a Sunday, the 44610th day from our period analysed.

sum( df$n_days ) - ( df[ years == 2023, 3 ] - 50 )

# so basically if we go back by 7 days this is going to be our Sundays

days <- 1:( sum( df$n_days ) - ( df[ years == 2023, 3 ] - 50 ) )

i <- 7
v <- c( )

while( i < length( days ) ) {
  
  v <- c( v, length( days ) - i )
  i <- i + 7
  
}

i <- 1
sundays <- c( )

for( i in 1:length( days ) ) {
  
  g <- ifelse( i %in% v, "Sunday", NA_integer_ )
  sundays <- c( sundays, g )
  
}

sunday <- data.frame( days = days, sundays = sundays )

# Now I already have the leap years, the Sundays and consequently I know 
# which was the first day of 1901 (Tuesday). Just need to vectorise the days by month
# 3 not leap years and 1 leap with 25 reps

leap_months <- c( 1:31, 1:29, 1:31, 1:30, 1:31, 1:30, 1:31, 1:31, 1:30, 1:31, 1:30, 1:31 )
not_leap_months <- c( 1:31, 1:28, 1:31, 1:30, 1:31, 1:30, 1:31, 1:31, 1:30, 1:31, 1:30, 1:31 )

month_days <- rep( c( rep( not_leap_months, 3 ), leap_months ), 25 )

# Now I am going to fill with the days, which fit perfectly because the last day is also a Sunday

sundays[ 1:6 ] <- c( "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" )
sundays[ 7:length( sundays ) ] <- c( "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" )

# after this I just need to cut the days until 2000

final_df <- data.frame( month_days, week_days = sundays[ 1:length( month_days ) ] )

nrow( final_df[ final_df$week_days == "Sunday" & month_days == 1, ] )

