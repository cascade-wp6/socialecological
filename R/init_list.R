
#' Initialize a list of random landscape objects
#' 
#' @param n An integer number. Number of landscape objects to generate.
#' @param cover A single numeric value. The average vegetation cover of the
#'   landscape. Defaults to NULL, which calls a random number generator drawing
#'   initial cover from within the range given in  \code{runif_range}.
#' @param width An integer number. The width of the lattice to generate.
#'   Defaults to 200.
#' @param height An integer number. defaults to the same value as width to
#'   produce square landscape objects.
#' @param runif_range A numeric vector of length two. Gives the lower and upper
#'   boundary of the random number generator for initial cover.
#'   
#' @return A list of n landscape objects. The output object is of class
#'   "landscape_list", which can be processed by the functions
#'   \code{list_update()} and \code{summary()}.
#' @export
#' @import caspr
#' 
#' @examples
#' 
#' L0 <- init_list(100, runif_range = c(0.6,0.99), width = 25)
#' 

init_list <- function(n, cover = NULL, width = 200, height = width, runif_range = c(0,1) ) {
  
  foreach(i = 1:n) %do% {
    
    if(is.null(cover)) inicover <- runif(1, runif_range[1], runif_range[2])
    init_landscape(c("1","0"), cover = c(inicover,1-inicover), width = width)
    
  } -> L
  
  class(L) <- "landscape_list"
  return(L)
}