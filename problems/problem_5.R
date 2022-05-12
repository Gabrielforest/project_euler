
# Problem 5 ---------------------------------------------------------------


# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of 
# the numbers from 1 to 20?

smallest_evenly_divisible <-
  function( start, range ) { while ( sum( start %% ( 1:range ) ) != 0 ) { start <- start + 1}; start }

smallest_evenly_divisible ( start = 2520, range = 20 )