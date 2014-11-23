## Functions to create a Matrix object with
## cacheable operations

## Constructor function to create a "special"
## matrix object

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
  }
  get <- function() x;
  setInverse <- function(inv) inverse <<- inv
  getInverse <- function() inverse;

  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}

## Function that calculates inverse for a "special" matrix

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    return(inverse)
  }
  m <- x$get()
  inverse <- solve(m)
  x$setInverse(inverse)
  inverse
}
