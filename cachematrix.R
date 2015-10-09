## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  i<-NULL
  setmatrix<-function(y)
  {
    x<<-y
  }
  getmatrix<-function() x
  setinverse<-function(inverse) i<<-inverse
  getinverse<-function() i
  list(getmatrix=getmatrix,setinverse=setinverse,getinverse=getinverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
i<-x$getinverse()
  if(!is.null(i))
  {
    message("cacheing inverse")
    return(i)
  }
  data<-x$getmatrix()
  inverse=solve(data)
  x$setinverse(inverse) 
  inverse
        ## Return a matrix that is the inverse of 'x'
}
