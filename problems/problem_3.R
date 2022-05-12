
# Problem 3 ---------------------------------------------------------------


# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

largest_prime_factor <- function( n ) {
  n <- 1:n 
  primes <- n[ length ( n ) %% n == 0 ]
  accumulated <- suppressWarnings( Reduce( `*`, primes, accumulate = TRUE ) )
  primes[ accumulated == length( n ) ][ 1 ]
}
# does not work for such a large number:
largest_prime_factor( 600851475143 )

# or

# The question could be: 
# between prime numbers of n, which one has the higher quotient obtained?
largest_prime_factor <- function( n ) {
  i <- 2
  while ( i < n ) {
    if ( n %% i == 0 ) {
      n <- n %/% i
    } else {
      i = i + 1
    }
  }
  n
}

largest_prime_factor( 600851475143 ) 