##abhilasha_dey-exp1
##comments--give description



makeCacheMatrix <- function(x = matrix()) {
  # holds the cached val or NULL when nothing is there
        # initially nothing is cached so = NULL
        cache <- NULL
        
        # stores a matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                # since the matrix is assigned a new value, I have flushed the cache
                cache <<- NULL
        }

        # returns the stored matrix
        getMatrix <- function() {
                x
        }

        # cache the given argument 
        cacheInverse <- function(solve) {
                cache <<- solve
        }

        # getting the cached value
        getInverse <- function() {
                cache
        }
        
        # return a list. Each named element of the list is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)


}


#  following function calculates d inverse of a "special" matrix creatd with 
# makeCacheMatrix func


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 # gets the cached val
        inverse <- y$getInverse()
        # if a cached value exists return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # otherwise get the matrix, caclulate the inverse and store it in
        # the cache
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        # returns inverse
        inverse

}
