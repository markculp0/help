---
title: R Plumber and Docker
lang: en
---

***

##### Use Jeff Allen's Docker image
```
  docker pull trestletech/plumber
```

***

##### Run first example
```
  docker run --rm -p 8000:8000 trestletech/plumber
  
  same as:
  
  docker run --rm -p 8000:8000 trestletech/plumber \
      /usr/local/lib/R/site-library/plumber/examples/04-mean-sum/plumber.R
```

***

##### Run my own file: api.R
```
  docker run --rm -p 8000:8000 -v `pwd`/api.R:/plumber.R trestletech/plumber /plumber.R
```

***

##### Get Bash shell
```
  docker run -it --rm --entrypoint /bin/bash trestletech/plumber
```

***

##### Customize with Dockerfile
```
  FROM trestletech/plumber
  MAINTAINER Docker User <docker@user.org>
  
  RUN R -e "install.packages('broom')"
  
  CMD ["/app/plumber.R"]
```

***

##### Build the image
```
  docker run --rm -v pwd :/app myCustomDocker
```

***

##### Auto-run on port 1234 on restart
```
  docker run -p 1234:8000 -d myCustomDocker
```

***

[Source of content: Jeff Allen | Trestletech | Creating API's in R Plumber | Chapter 7 Hosting](https://www.rplumber.io/docs/hosting.html)

***
***