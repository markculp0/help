---
title: R 
lang: en
---

***

[R Plumber](r/rPlumber.html) | [R Packages](r/rPackage.html)

***

##### Factors: factor to original type
```
  val <- levels(val)[val]
```

***

##### Dates: character to date
```
  library(lubridate)
  
  val <- mdy(val)   
  val <- ydm(val)
  val <- as.Date(val) 
```

***

##### Dates: useful functions
```
  weekdays(val) 
  julian(val)
  months(val)
  lubridate::wday(date1)
  strptime() 
  as.POSIXlt
  as.POSIXct
```

***

##### Dataframes: read CSV, create column headings
```
  df <- read.csv("sampleData.csv", header = F, sep = ',', 
    skip = 1, fill = T, comment.char = "", quote = "")
  
  h1 <- readLines("sampleData.csv",1)
  h1 <- strsplit(h1, ',', fixed = T)
  names(df) <- make.names(h1[[1]])
```

***
***