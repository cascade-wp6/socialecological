
#' Update a list of landscape objects.
#'
#' @param list A list object of class "landscape_list". 
#' @param t_eval An integer number. Gives the number of timesteps to evaluate. 
#' @param parms A list of numeric values as specified for \code{caspr::livestock$parms}. 
#'
#' @return Returns a list of landscapes. The function feeds any list of landscape objects into the simulation
#    function ca() of the caspr package. This returns an updated version of the
#    entire list that can be plotted or analysed afterwards.
#' @export
#' @import caspr 
#' @import foreach
#' @import doSNOW
#'
#' @examples
#' 
#' L0 <- init_list(100, runif_range = c(0.6,0.99), width = 25)
#' 
#' p <- list(  
#'   r = 1.0,  # max. regeneration rate of plants
#'   b = 0.2,  # environmental quality
#'   sigma = 0.1, # random annual variation of environmental quality
#'   f = 0.9,  # local facilitation
#'   alpha = 0, # water runoff
#'   K = 0.9, # carrying capacity of the system
#'   c = 0.2, # local competition
#'   m = 0.05, # intrinsic mortality of plants (inverse of av. lifespan)
#'   v = 0.0, # attractant-decoy
#'   p = 0.9, # associational resistance
#'   L = 20, # Livestock density
#'   q = 0, # hill exponent of functional response
#'   h = 30, # handling time 
#'   a = 0.3 # attack rate of livestock
#'   ) 
#'   
#'  
#' workerlist <- c(rep("localhost", times = parallel:::detectCores()-1)) 
#' cl <- makeSOCKcluster(workerlist)
#' registerDoSNOW(cl) 
#'   
#' L100 <- update_list(L0, 100, p)
#' 
#' stopCluster(cl)
#' 

update_list <- function(list, t_eval , parms) {
  
  foreach(l = list, .packages = c("caspr", "socialecological")) %dopar% {
    
    run <- ca(l, livestock, parms_timeseries(parms, t_eval), t_max = t_eval, saveeach = t_eval)
    return(run$landscape[[2]])
    
  }-> L
  
  class(L) <- "landscape_list"
  return(L)
  
}
