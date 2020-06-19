---
title: Docker
lang: en
---

***

### Get information

***

##### Check client & server
```
  docker version
```

##### More info
```
  docker info
```

##### Help
```
  docker <cmd> --help
```

***

### Images

***


##### List images in local cache
```
  docker image ls
```

##### List images w Image ID
```
  docker images -a
```

##### Remove image
```
  docker image rmi <imgID>
```

##### Remove image force
```
  docker image rmi <imgID> -f
```

***

### Containers

***

##### List active containers 
```
  docker container ls
```

##### Stop running container by container id# / frndly name
```
  docker container stop a83
  
  docker container stop angry_austin
```
##### List inactive containers 
```
  docker container ls -a
```

##### Start a stopped container by container id#
```
  docker container start a83
```

##### Start a new container 
```
  docker container run <img_name>
```

##### Remove containers by container ID ( -f if running)
```
  docker container rm 72e d38 305
```

##### Named Volume -v : Mapped Container Volume
```
  docker container run -d --name psql \
      -v psql:/var/lib/postgresql/data postgres:9.6.2
```

***
***
