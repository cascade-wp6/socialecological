#' Title
#'
#' @param x 
#' @param n 
#' @param lambda 
#' @param bcmethod 
#'
#' @return a list of x and y values. The y values describe the expected frequency of observations at value x. 
#' @export

betakernel <- function(x, n = 512, lambda = 0.01, bw = NULL,  bcmethod= "beta1") {
  out <- list()
  out$x <- seq(0,1, length = 512)
  if(all(x == 0)) {out$y = c(n, rep(0, n-1))} else {
    out$y <- evmix::dbckden(out$x, x, lambda = lambda, bw = bw, bcmethod= bcmethod, xmax = 1)
  }
  return(out)
}
