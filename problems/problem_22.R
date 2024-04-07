
# Problem 22 --------------------------------------------------------------

# Using names.txt (right click and 'Save Link/Target As...'), 
# a 46K text file containing over five-thousand first names, 
# begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, 
# multiply this value by its alphabetical position in the list to obtain a name score.
# 
# For example, when the list is sorted into alphabetical order, 
# COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th 
# name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
# 
# What is the total of all the name scores in the file?

y <- read.table( "data/p022_names.txt" )
y <- sort( unlist( strsplit( paste0( y$V1, gsub( "[^a-z A-Z ,]", "", y$V2 ) ), "," ) ) )

mult <- function( y ) {
  v <- c( )
  i <- 1
  for( i in 1:length( y ) ) { 
    x <- sum( match( unlist( strsplit( y[i], "" ) ), LETTERS ) ) * i 
    v <- c( v, x )
  }
  sum( v )
}

mult( y )

