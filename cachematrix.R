## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- null
  set <- function(y) {
          x <<- y
          inv <<- null
}
getinv <- function() inv
setinv <- function (inverse) {
  inv <<- inverse
}
return(list(
  set = set,
  get = get,
  setinverse = setinv,
  getinverse = getinv))
}
## I am not sure this is going to work.

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    return(inverse)
  }
  m <- solve(x$get())
  x$setinverse(m)
#return(m)  
}
