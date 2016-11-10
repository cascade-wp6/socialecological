
#' Title
#'
#' @param x 
#' @param n 
#' @param lambda 
#' @param bcmethod 
#'
#' @return
#' @export
#'
#'
betakernel <- function(x, n = 512, lambda = 0.02,  bcmethod= "beta1") {
  out <- list()
  out$x <- seq(0,1, length = 512)
  out$y <- dbckden(out$x, x, lambda = lambda,  bcmethod= bcmethod, xmax = 1)
  return(out)
}
