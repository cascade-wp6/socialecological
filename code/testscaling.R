

# default plot for graphs over G or C

defplot <- function(...) plot(..., 
                              type = "l", 
                              bty = "l", cex = 0.7, las = 1,
                              xlim = c(0,1), ylim = c(0,0.25), 
                              xaxs = "i", yaxs = "i", 
                              xaxp = c(0,1,2), yaxp = c(0,0.25,2), 
                              xlab = "vegetation cover") 


G <- function(rho, r = 1, K = 1) r*rho*(1-rho/K)

rho <- seq(0,1,length = 100)

C <- function(rho, 
              m_0 = 0.05, 
              L = 5, # livestock per hectare
              c = 200*200, # lattice area, number of cells
              a = 0.6, 
              h = 100, 
              q = 0) (m_0 * rho) + (a*rho^(1+q)*L )/( 1+a*h*(rho^(1+q)) ) 

par(mfrow = c(2,2))

defplot(rho, C(rho, L = 5, c = 100*100), ylab = "plant mortality")
defplot(rho, C(rho, L = 5, c = 200*200), ylab = "plant mortality")



pp <- livestock$parms
pp$b <- 0.3
pp$p <- 0.2
pp$L <- 6


l50 <- init_landscape(states = c("1","0"), cover = c(0.2,0.8), width = 50)
run50 <- ca(l50, model = livestock, parms = pp, t_max = 50)

l75 <- init_landscape(states = c("1","0"), cover = c(0.2,0.8), width = 75)
run75 <- ca(l75, model = livestock, parms = pp, t_max = 50)

l100 <- init_landscape(states = c("1","0"), cover = c(0.2,0.8), width = 100)
run100 <- ca(l100, model = livestock, parms = pp, t_max = 50)

par(mfcol = c(3,6), mar = c(1,1,1,1))
for(i in seq(1,51,10)) {
  plot(run50$landscapes[[i]])
  plot(run75$landscapes[[i]])
  plot(run100$landscapes[[i]])
  
} 

par(mfcol = c(1,1), mar = c(4,4,1,1))

plot(run50)
lines(run75$time,  run75$cover[[1]])
lines(run100$time,  run100$cover[[1]])

