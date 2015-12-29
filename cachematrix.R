## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  get <- function() x
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  getInv <- function() inv
  setInv <- function(inv2) inv <<- inv2
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <<- solve(mat)
  x$setInv(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
