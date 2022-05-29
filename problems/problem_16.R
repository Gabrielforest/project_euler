
# Problem 16 --------------------------------------------------------------

# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?
sum_digits <- function( n ) {
  v <- c( )
  for ( i in 1:nchar( n ) ) { 
   x <- substr( n, start = i, stop = i )
   v <- c( v, x )
  }
  sum( as.numeric( v ) ) 
}
sum_digits( format( 2^1000, scientific = FALSE ) )
# it is not precise with big numbers using base R
# the correct approach would be this:
sum_digits( as.character( gmp::pow.bigz( 2, 1000 ) ) )
