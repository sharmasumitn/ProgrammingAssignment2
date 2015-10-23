## The following code provides functions to cache inverse of matrix
## The makeCacheMatrix function has sub functions get(), set(), getInverseMatrix, setInverseMatrix
## The get() function returns the matrix object
## The set() function is used to change values in the matrix object
## The getInverseMatrix() function return the inverse of the matrix 
## The setInverseMatrix() function sets the inverse of the matrix in the cache


makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function (y)
        {
                x <<- y
                m <<- NULL
        }
get <- function() x
getInverseMatrix <- function() m
setInverseMatrix <- function(inv_m)
        {
                m<<-inv_m
        }
list(set=set, get=get, getInverseMatrix=getInverseMatrix, setInverseMatrix=setInverseMatrix)        
}


## The cacheSolve() function returns the inverse of the matrix
## This function checks if the inverse of the matrix is available in the cache
## If the inverse is not available in the cache then it calculates the inverse and 
## store it in the cache
ca
cacheSolve <- function(x, ...) 
        {
                m<-x$getInverseMatrix()
                if(!is.null(m))
                        {
                                message("Returning cached inverse of matrix")
                                return(m)
                        }
                data<-x$get()
                m<-solve(data)
                x$setInverseMatrix(m)
                m
        }
