## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL ## Propiedad Inversa
  
  ## Fabricar la matriz
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Almacenar la funcion de la matriz en get
  get <- function() {
    
    m ## Retornar el valor de la matriz
  }
  
  ## Fabricar la matriz Inversa
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Adquirir el valor de la matriz inversa y retornarlo
  getInverse <- function() {
    
    i
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse() ##Obtener la matriz inversa
  
  
  if( !is.null(m) ) {
    message("Obteniendo datos de cache")
    return(m)
  }
  
  data <- x$get()  
  ## Calcular la inversa
  m <- solve(data) %*% data
  x$setInverse(m)
  
  ## retornar la matriz
  m
}
