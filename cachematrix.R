## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  set_in <- function(inv) m <<- inv
  get_in <- function() m
  list(set = set, get = get, set_in = set_in, get_in = get_in)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$get_in()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  d <- x$get()
  m <- solve(d , ...)
  x$set_in(m)
  m
}
