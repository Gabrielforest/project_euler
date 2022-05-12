
# Problem 9 ---------------------------------------------------------------

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

pythagorean_triplet_product <- function ( a, b, c, sum_result ) {
  for ( a in 1:floor( ( sum_result / 3 ) ) ) {
    for ( b in a:( sum_result / 2 ) ) {
      c <- sum_result - a - b
      if ( a^2 + b^2 == c^2 ) {
        break
      }
    }
    if ( a^2 + b^2 == c^2 ) {
      break
    }
  }
  a * b * c
}

pythagorean_triplet_product( 0, 0, 0, 1000 )
