cacheSolve <- function(x, ...) {
        m <- x$getInv() # get the inversed matrix from object x
        # it will be null if uncalculated, remember the first line "xinv <- NULL" in the previous function
        if(!is.null(m)) { # if the inversion result is there
                message("getting cached data")
                return(m) # return the calculated inversion
        }
        data <- x$get() # if not, we do x$get to get the matrix object
        m <- solve(data) # we solve it
        x$setInv(m) # we then set it to the object
        m # return the solved result