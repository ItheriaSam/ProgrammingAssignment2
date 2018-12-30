## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

rm(list = ls()) ## clear global environment
## function 'makeChacheMatrix' creates a special matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function()x
setinv<-function(i) m<<- solve(x)
getinv<-function() m
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function
## cachesolve functions solve the inverse of the 'special matrix' created above.
cacheSolve <- function(x, ...) {
  m<-x$getinv()
  if(!is.null(m)){
    
    return(m)
  }
  
  m<-solve(x$get())
  x$setinv(m)
  m
  
        ## Return a matrix that is the inverse of 'x'
}

