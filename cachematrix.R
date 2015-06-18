## This function catches the inverse of a matrix instead of computing them repeatedly.

## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(a = matrix()) {
  ## Next set of lines will initialize inverse property
  i <- NULL
  set <- function( matrix ) {
    a <<- matrix
    i <<- NULL
  }
  ## Next part of the code will returnt the value in the matrix
  get <- function() a

  ## Next we will set the inverse of the matrix
  setInverse <- function(inverse) i <<- inverse
  
  ## Next we will get the inverse values of the matrix
  getInverse <- function() i
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## This function computes the inverse of a matrix stored by makeCacheMatrix function

cacheSolve <- function(a=matrix(), ...) {
  i <- x$getInverse()
  if( !is.null(i) ) {
    message("getting cached data")
    return(i)
  }
  matrix<-x$get()
  i<-solve(matrix, ...)
## set the inverse   
  x$setmatrix(i)
## Get the inverse values
  i
}
