# An application of the livestock resilience model for social-ecological modelling (WP6 & WP8)

This repository explores the use of the livestock resilience model, a spatially-explicit cellular automata model, for a simulation of economic risk assessment of management methods in arid rangelands. 

The repository provides 

1. an [example](https://github.com/cascade-wp6/socialecological/blob/master/documentation/manual_simulations.pdf) for the use of the R package [caspr] as a simulation engine of the livestock resilience model. 

2. an interactive implementation for R Shiny. Opening the file [documentation/interactive_livestockmodel.Rmd](https://github.com/cascade-wp6/socialecological/blob/master/documentation/interactive_livestockmodel.Rmd) in RStudio allows you, after installation of some extra packages, to run the interactive app. 

3. Functions for the simulation. This repository is also an R package and can be installed from within R using:
  ```
  install.packages("devtools")
  devtools::install_github("cascade-wp6/socialecological")
  ```
  
  
# LICENSE 


## Text

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">The documentation and texts of the livestock resilience model for social-ecological modelling</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="mailto:fd.schneider@senckenberg.de" property="cc:attributionName" rel="cc:attributionURL">Florian D. Schneider</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

## Code

The MIT License (MIT)

Copyright (c) 2015 the authors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  