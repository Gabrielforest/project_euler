
# Problem 1 ---------------------------------------------------------------


# if we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

problem_1 <- function( range ) { sum( ( 1:range ) [( ( 1:range ) %% 3 == 0) | ( ( 1:range ) %% 5 == 0 )] )}

problem_1( range = 999 )