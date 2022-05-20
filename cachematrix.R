## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
library(MASS)
makeCacheMatrix <- function(a = matrix()) {
  y <- NULL
  set <- function(b){
    a <<- b
    y <<- NULL
  }
  get <- function()a
  setInv <- function(inverse) y <<- inverse
  getInv <- function() y 
  list(set = set, get = get, 
       setInv = setInv, 
       getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
        ## Return a matrix that is the inverse of 'x'
  y <- a$getInv()
  if(!is.null(y)){
    message("getting cached data")
    return(y)
  }
  mat <- a$get()
  y <- solve(mat,...)
  a$setInv(y)
  y
}
