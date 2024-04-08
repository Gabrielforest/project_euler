

# Problem 21 --------------------------------------------------------------

# Let d(n) be defined as the sum of proper divisors of n (numbers less 
# than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable 
# pair and each of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; 
# so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.


# se a soma do número 220 que é o 284
# e a soma do número 284 for 220, entao 
# 220 e 284 entram na lista

divisor_sum <- function( n ) {
  v <- c( )
  for( i in 1:( n / 2 ) ) {
    if( n %% i == 0 ) {
      v <- c( v, i )
    }
  }
  sum( v )
}

find_amicables <- function( n ) {
  amicable_pairs <- c( )
  for( i in 1:n ) {
    res <- divisor_sum( i )
    if( i != res && divisor_sum( res ) == i ) {
      if( !i %in% amicable_pairs ) {
        amicable_pairs <- c( amicable_pairs, i, res )
      }
    }
  }
  sum( amicable_pairs )
}

find_amicables( 10000 )
