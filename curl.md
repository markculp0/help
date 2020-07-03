---
title: cURL
lang: en
---

***

##### Verbose: the whole page
```
    curl -v http://www.msn.com 
```

***

##### Just the headers 
```
    curl -I http://www.google.com
```

***

##### Post data 
```
    curl -d "string" http://myform.html

    curl -d @myfile http://myform.html
    
    curl -d '{ "name" : "rex" }' http://myform.html
    
    curl --data "a=2&b=3" http://localhost:8000/sum
```

***

##### Put data
```
    curl -T <file> http://mysite.html
```

***
##### Get ASCII file
```
    curl "ftp://mysite.com/file.txt;type=A"  
```

##### Get binary file
```
    curl "ftp://mysite.com/file.bin;type=I"
```

##### Get directory
```
    curl "ftp://mysite.com/dir;type=D"
```

***
***



