## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  set <-function(y){
    x<<-y
    m<<-NULL
  }
  get <- function() x
  
  setinverse <- function(solve) m<<-solve
  getinverse <- function() m
  
  list(
    set = set, 
    get = get,
    setinverse = setinverse,
    getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
#check if is already  available  
m<-x$getinverse()
  if(!is.null(m)) {return(m)}
#calculate inverse matrix "minverse"

minverse <- x$get()
m <- solve(minverse)
x$setinverse(m)
m

  }
