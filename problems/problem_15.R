
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
