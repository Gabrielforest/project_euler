
# Problem 4 ---------------------------------------------------------------


# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers

reverse_number <- function ( n ) {
  rev <- 0
  while ( n > 0 ) {
    r <- n %% 10
    rev <- rev * 10 + r
    n <- n %/% 10
  }
  rev
}

is_palindrome <- function( x ) {
  x == reverse_number( x )
}

x <- outer( 1:999, 1:999 )
max( x[sapply( x, is_palindrome )] )