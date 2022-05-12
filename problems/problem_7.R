
# Problem 7 ---------------------------------------------------------------

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10,001st prime number?

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

prime_number_by_position <- function( n ) {
  i <- 2  
  v <- c( )
  while ( length( v ) < n ) {
  if ( is_prime ( i ) ) v <- c( v, i ) 
  i <- i + 1
  }
  v[ n ]  
}

prime_number_by_position( 10001 )