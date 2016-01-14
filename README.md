# An application of the livestock resilience model for social-ecological modelling (WP6 & WP8)

This repository explores the use of the livestock resilience model, a spatially-explicit cellular automata model, for a simulation of economic risk assessment of management methods in arid rangelands. 

The repository provides 

1. an [example](https://github.com/cascade-wp6/socialecological/blob/master/documentation/manual_simulations.pdf) for the use of the R package [caspr] as a simulation engine of the livestock resilience model. 

2. an interactive implementation for R Shiny. Opening the file [documentation/interactive_livestockmodel.Rmd](https://github.com/cascade-wp6/socialecological/blob/master/documentation/interactive_livestockmodel.Rmd) in RStudio allows you, after installation of some extra packages, to run the interactive app. 

3. Functions for the simulation. The repository is also an R package and can be installed from within R using:
  
  ```
  install.packages("devtools")
  devtools::install_github("fdschneider/caspr")
  ```
  
  