
# Problem 10 --------------------------------------------------------------


# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

is_prime <- function( n ) {
  if ( n == 2 ) { 
    TRUE 
  }
  else if ( c( n %% 1:n ) [ c( 1, length( n ) ) ] == 0 & 
            as.logical ( table( c( n %%  1:n ) == 0 ) == 2 )[ 2 ] ) {
    TRUE
  } else {
    FALSE
  }
}

sum_primes <- function( limit ) {
  v <- c( )
  for ( i in 2:( limit - 1 ) ) {
    if ( is_prime( i ) ) {
      v <- c( v, i )
    }
  }
  sum( v )
}
# takes too long with big number
suppressWarnings( sum_primes( 2000000 ) )

# fast way
sum_primes <- function( n ) {
  if ( n <= 1 ) {
    primes <- numeric( 0 )
  }
  if ( n == 2 | n == 3 ) {
    primes <- 2:n
  }
  else {
    numbers <- 2:n
    sieve <- rep( TRUE, times = n - 1 )
    cross.limit <- floor( sqrt( n ) )
    count <- 1   
    p <- numbers[ sieve ][ count ]
    while ( p <= cross.limit ) {
      sieve[ p * ( 2:floor( n / p )) - 1 ] <- FALSE
      count <- count + 1
      p <- numbers[ sieve ][ count ]
    }   
    primes <- numbers[ sieve ]
  }
  primes
}
sum( as.numeric( sum_primes( 2000000 ) ) )