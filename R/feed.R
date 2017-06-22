#' Title
#' 
#' @param l
#' @param parms a list of parameter values. defaults to the livestock default parameter set.  
#'   
#' @return a single value: the expected number of plants dying from livestock
#'   feeding on the given landscape l under the given parameter combination.
#' @export

feed <- function(l, parms = livestock$parms, factor = 1) {
  
    if("landscape_list" %in% class(l)) {
      
      sapply(L, function(l) feed(l, parms = parms)  )
      
      } else {
        
        rho_one <- as.vector(sum(l$cells == "1")/(l$dim[1]*l$dim[2])) # get initial vegetation cover
        q_one_one <- neighbors(l, "1")/4  # count local density of occupied fields for each cell
        
        temp <- with(parms,  ( (a+ v*q_one_one) * (1-p*q_one_one) * L * rho_one^(1+q) )/( 1 + (a+ v*q_one_one) * (1-p*q_one_one) * h * rho_one^(1+q) ) )   # get probability of death by grazing for each cell, i.e. productivity of fodder
        
        area <- prod(l$dim)*0.25  #area of landscape object
        sum(temp[l$cells == "1"])*factor/area  
    }
  
}