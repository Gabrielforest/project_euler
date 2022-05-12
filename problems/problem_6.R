
# Problem 6 ---------------------------------------------------------------


# The sum of the squares of the first ten natural numbers is,
#                1^2 + 2^2 + 3^2 ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
#                (1 + 2 + 3 ... + 10)^2 = 3025

# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is .
#                 3025 - 385 = 2640

# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.

difference_first_sq_n_sq_sum <- function( x ) { sum( 1:x )^2 - sum( ( 1:x )^2 ) }

difference_first_sq_n_sq_sum( 100 )