---
title: R Plumber Security
lang: en
---

***

##### Prevent Denial Of Service: Limit argument size
```
  function(pts=10) {
    if (pts > 1000){
      stop("pts must be < 1,000")
    }
  
    plot(1:pts)
  }
```

***

##### Sanitize user input: Strip "non-word" characters 
```
  function(file) {
    sanitizedFile <- gsub("\\W", "", file)
  
    path <- file.path("./datasets", sanitizedFile)
    readLines(path)
  }
```

***

##### Avoid SQL injection: Escape user input 
```
  safeCharVector <- htmltools::html_escape(charVector)

```

***

##### Avoid Cross-Origin Resource Sharing (CORS): The API endpoint forbids "cross-domain" requests by default

* ##### To allow them:
```
  #* @filter cors
  cors <- function(res) {
      res$setHeader("Access-Control-Allow-Origin", "*")
      plumber::forward()
  }

```
* ##### To disable for some:

```
  #* @preempt cors
  #* @get /sub
  cors_disabled <- function(a, b){
    as.numeric(a) - as.numeric(b)
  }
```

***

[Source of content: Jeff Allen | Trestletech | Creating API's in R Plumber | Chapter 6 Security](https://www.rplumber.io/docs/security.html)

***
***