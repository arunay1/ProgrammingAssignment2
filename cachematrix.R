## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## This function takes an matrix as an argument and stores in in parent environment
## set function stores the value of matrix in parent environment
function(x = matrix()) {
    m <- NULL
    set <- function(y) 
    {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m
    list(set = set, get = get,setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
cacheSolve <- function(x, ...) 
{
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) 
    {
        message("getting cached Inverse Data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}