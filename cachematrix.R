## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  ## set the matrix
  set <- function(matrix) {
    m <<- matrix
    i <<- NULL
  }
  ## get the matrix
  get <- function(){
    m
  }
  
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## get the inverse of the matrix
  getInverse <- function(){
    i
  }
  
  
  list(set = set, get = get,
       setmean = setInverse,
       getmean = getInverse)

}


## The following function calculates the inverse of the special "matrix" created with the above function.
## at first it check if the inverse already calculated. If the inverse calculated previously will return it,
## Otherwise it calculate inverse and return it.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inverse(data,...)
  x$setInverse(m)
  m
}

