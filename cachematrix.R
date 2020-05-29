
## This is a pair of funtions that cache the inverse of a matrix

## This function creates a special "matrix" object (really a list, as shown) 
## that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, 
       get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
  
}


## This function computes the inverse of the matrix created by the 
## makeCacheMatrix function above If the inverse has already been 
## calculated (and the matrix has not changed), then cacheSolve should 
## retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse()
  
  if(!is.null(inv)) {
    message("getting cached data")
    return(m)
  }
  
  matrix <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}