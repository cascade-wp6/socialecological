
#' Summary method for landscape lists.
#'
#' @param L A list of landscape objects (may be of class "landscape_list"). 
#'
#' @return A list of statistical output containing the following entries: 
#' \itemize{
#'  \item{\code{$cover}}{Stuff}
#'  \item{\code{$local}}{Stuff}
#'  \item{\code{$clustering}}{Stuff}
#'  \item{\code{$kernel}}{Stuff}
#' }
#' 
#' @export
#'
#' @examples
#' 
#' L0 <- init_list(100, runif_range = c(0.6,0.99), width = 50)
#' summary(L0)
#' 

summary.landscape_list <- function(L) {
  summary_out <- list(cover = as.vector(sapply(L, function(l) summary(l)$cover[1])),
                      localcover =  as.vector(sapply(L, function(l) summary(l)$local[1])),
                      clustering = mean(L$local/L$cover)
  )
  summary_out$kernel = betakernel(summary_out$cover)
  class(summary_out) <- c("summary_landscape_list","list")
  return(summary_out)
}

#' @export

print.summary_landscape_list <- function(x) {
  cat("Assessing n =", length(x$cover), "landscapes: \n")
  cat("\t mean total cover: \t",  round(mean(x$cover),4), "(±",  round(sd(x$cover),4),")","\n")
  cat("\t mean local cover: \t",  round(mean(x$local),4), "(±",  round(sd(x$local),4),")","\n")
  cat("\t clustering coefficient: \t", round(mean(x$local/x$cover),2) )
}
