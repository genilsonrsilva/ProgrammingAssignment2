## the makeCacheMatrix funcion was created to reach to first goal of programming assignment (create a special matrix that can cache its inverse)
## let's see this now:

makeCacheMatrix <- function(x = matrix( )){
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function( )x
  setInverse <- function(inverse)j <<- inverse
  getInverse <- function( )j
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## the cacheSolve function was create to reach to the second goal of this programming assignment (computes the inverse of value returned by makeCacheMatrix function above)
## let's see it in action:

cacheSolve <- function(x, ...){
  j <- x$getInverse( )
  if(!is.null(j)){
    message("getting cache data")
    return(j)
  }
  mat <- x$get( )
  j <- solve(mat,...)
  x$setInverse(j)
  j
}