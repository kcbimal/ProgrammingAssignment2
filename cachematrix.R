## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  y <- NULL
  set <- function(b){
    x <<- b
    y <<- NULL
  }
  get <- function()x
  setInv <- function(inverse) y <<- inverse
  getInv <- function() y 
  list(set = set, get = get, 
       setInv = setInv, 
       getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  y <- x$getInv()
  if(!is.null(y)){
    message("getting cached data")
    return(y)
  }
  mat <- x$get()
  y <- solve(mat,...)
  x$setInv(y)
  y
}
