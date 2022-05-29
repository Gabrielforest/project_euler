
# Problem 15 --------------------------------------------------------------

# Starting in the top left corner of a 2×2 grid, and only being able to
# move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

nLattice <- 20
lattice <- matrix( ncol = nLattice + 1, nrow = nLattice + 1 )
lattice[ nLattice + 1, - ( nLattice + 1 ) ] <- 1
lattice[ - ( nLattice + 1 ), nLattice + 1 ] <- 1
for ( i in nLattice:1 ) {
  for ( j in nLattice:1 ) {
    lattice[ i, j ] <- lattice[ i + 1, j ] + lattice[ i, j + 1 ]
  }
}
lattice[ 1, 1 ]

# or simply
factorial <- function( n ) { 
  if ( n < 0 ) {
    stop("factorial operation does not exist for negative numbers")
  } else if ( is.na(suppressWarnings(as.numeric( n )))) {
    warning("factorial operation requires a number")
  } else if ( n == 0 ) {
    1
  } else if ( n > 0 ) {
    factorial = 1
    for ( i in 1:n ) {
      factorial = factorial * i 
    }
    factorial
  }
}
nlaticce <- function( n ) { factorial( n * 2 ) / ( factorial( n ) * factorial( n ) ) }
nlaticce( 20 )
