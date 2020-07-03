---
title: nginx
lang: en
---

***

##### Startup
```
  sudo systemctl start nginx
```

##### Check status
```
  sudo systemctl status nginx
```

##### Content served
```
  /var/www/html
```

##### Config file
```
  /etc/nginx/nginx.conf
```

##### Log files
```
  /var/log/nginx/access.log
  /var/log/nginx/error.log
```

##### Apply config, graceful shutdown
```
  nginx -s reload
  
  nginx -s quit
  
```  

##### Main, events, http contexts
```
  context {
    # main context
    
    # Linux system user will own and run the nginx server
    user www-data; 
    . . .
    
  }
  
  events {
    # events context
    
    # Max simultaneous connections 
    worker_connections 768;
    
    . . .
  }

  http {
  
    # http context
    
    server {
    
        # first server context
        listen: ...;
        server_name: ...;
        
        location /match/criteria {

          # first location context

        }
        
        # Or in http context
        location / {  
          root /var/www/html;
          . . .
        }
    }
    
    upstream upstream_name {

        # upstream context

        server proxy_server1;
        server proxy_server2;
        . . .
    }
    . . .
  }
```

##### Bash alias to backup config
```
  alias nginx-backup-config-bookmarks.conf=nginxconfigbackup

nginxconfigbackup(){
  sudo cp /etc/nginx/sites-available/www.codingmarks.org /etc/nginx/sites-available/www.codingmarks.org.$(date "+%Y-%m-%d_%H:%M")-$1 #the parameter ending is the comment use dashes "-" between words
}

```

***
***