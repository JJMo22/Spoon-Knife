cacheSolve <- function(x, ...){
  s <- x$getsol()
  if (!is.null(s)){
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data,...)
  x$setsol(s)
  s
}