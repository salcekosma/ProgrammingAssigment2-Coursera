makeCacheMatrix <- function(x = matrix()) {
        
        xinv <- NULL # this is where the result of inversion is stored
        # A setter function, use this to set a matrix to object created by makeCacheMatrix function
        # e.g makeCacheMatrix(testmatrix) # here we work on testmatrix
        # makeCacheMatrix$set(testmatrix1) # here we work on testmatrix1
        set <- function(y) {
                x <<- y
                xinv <<- NULL # it also initialises xinv to null
        }
        
        get <- function() x # return the input matrix
        setInv <- function(inv) xinv <<- inv # set the inversed matrix
        getInv <- function() xinv # return the inversed matrix
        # return a list that contains these functions, so that we can use
        # makeCacheMatrix object like these
        # x <- makeCacheMatrix(testmatrix)
        # x$set(newmatrix) # to change matrix
        # x$get # to get the setted matrix
        # x$setInv # to set the inversed matrix
        # x$getInv # to get the inversed matrix
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}