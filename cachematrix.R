## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

invertedmatrix <- matrix()  ## initialize a variable for storing inverted matrix
cacheMatrix <- matrix()     ## initialize a variable for storing the matrix in cache
bMatrixInitialized <- FALSE ## boolean to store if Matrix is initialized or not
bInverseCreated <- FALSE    ## boolean to store if Inverse matrix has been created or not

## This function initializes the argument 'x' if none was passed, other it initializes the booleans mentioned above
## and caches the matrix so passed as an argument
makeCacheMatrix <- function(x = matrix()) {
 
  if(!bMatrixInitialized) {
     if(! is.matrix(x)) {
      x <- matrix(c(3,-3,3,6), nrow=2, ncol=2)
     }
      bMatrixInitialized <<- TRUE
  }
  cacheMatrix <<- x
}

## Write a short comment describing this function
## This function creates an inverse matrix for the matrix that was passed as an argument to it
## if no such inverse was previously created
## Else, it re-uses the previously cached version of the inverse matrix and outputs it
cacheSolve <- function(x, ...) {
  
  ## Check if there was a change in matrix contents, if there was a change, reinitialize the booleans
  if(! identical(cachematrix,x)) {
    print("New matrix not equal to cached one")
    bMatrixInitialized <- FALSE
    bInverseCreated <- FALSE
  }
  if (! bInverseCreated) { 
      print("Creating Inverse Matrix now")
      invertedmatrix <<- solve(makeCacheMatrix(x))
      bInverseCreated <<- TRUE
  }
  else {print("Inverse Matrix already exists, printing it now..")}
  print(invertedmatrix)
}

