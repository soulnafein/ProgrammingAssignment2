## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
  }
  get <- function() x;
  setInverse <- function(inv) inverse <<- inv
  getInverse <- function() inverse;

  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

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
