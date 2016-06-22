cacheSolve <- function(x, ...){
  s <- x$getsol()
  if (!is.null(s)){
    message("Boo ya")
    return(s)
  }
  data <- x$get()
  s <- solve(data,...)
  x$setsol(s)
  s
}
