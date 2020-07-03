---
title: R Package Development
lang: en
---

***

##### Required packaages for development
```
  install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
```

***

##### Create package framework
```
  devtools::create("~/path/pkgName")
  devtools::create_package("~/path/pkgName")

  
  devtools::document() 
  (or Ctl-Shft-D)
```

***

##### Create a bundle, ie zip, tar.gz
```
  devtools::build()
```

***

##### Create a binary package, OS specific
```
  devtools::build(binary = TRUE)
```

***

##### Load library; check install
```
  library(devtools)
  has_devel()
```

***

#####  Attach a package
```
  devtools::load_all()
  
  devtools::test()
```

***

##### Use a package
```
  devtools::use_package("lubridate")
```

***

##### Store data in "R/sysdata.rda" file for internal use.
```
  devtools::use_data(object, <pkg>, internal = TRUE)
  
  devtools::use_data_raw()
  
  devtools::use_rcpp()
```

***

##### Documenting an R function

```
  #' Add together two numbers. 
  #'
  #' \code{add} returns the sum of all the values present in its arguments.
  #' 
  #' @param x A number. 
  #' @param y A number. 
  #' @return The sum of \code{x} and \code{y}. 
  #' @examples #' add(1, 1) 
  #' add(10, 1) 
  add <- function(x, y) {
    x + y 
  }
```

***
***



