# makeCacheMatrix - function to creates a special "matrix" object that can cache its inverse
# cachesolve - function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix had not changed), then cachesolve should retrieve the inverse from the cache.
#1 set the value of the vector
#2 get the value of the vector
#3 set the value of the mean
#4 get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

cachesolve <- function(inv, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
