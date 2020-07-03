---
title: ssl-tls
lang: en
---

***

### Self-Signed TLS Certificate
```
  su - root
  
  mkdir /root/certs && cd /root/certs

  # Create key
  openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out MyCertificate.crt -keyout MyKey.key
  
  # Only root should access it
  chmod 400 /root/certs/MyKey.key
```

* Back up your certificate and key to external storage. 

##### Verify nginx compile with ssl
```
  nginx -V
```

* The key is private
* The certificate is not

##### Store certs & keys in storage folder
```
  mkdir /root/certs/example.com/
```

##### Restrict permissions on the key file
```
  chmod 400 /root/certs/example.com/example.com.key
```

##### Configure the http block

* /etc/nginx/nginx.conf

```
  http {
    ssl_certificate     /root/certs/example.com/example.com.crt;
    ssl_certificate_key /root/certs/example.com/example.com.key;
    ssl_ciphers         EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH;
    ssl_protocols       TLSv1.1 TLSv1.2;
  . . .
  }
```

***

### Configure a single HTTPs site

* /etc/nginx/conf.d/example.com.conf
* Make site available only over HTTPS

```
  server {
    listen              443 ssl default_server;
    listen              [::]:443 ssl default_server ;
    server_name         example.com www.example.com;
    root                /var/www/example.com;
  }
```

##### Reload config
```
  nginx -s reload
```

***

### Configure Multiple Sites with a Single Certificate

* Scenario: You have a certificate that is valid for multiple domains.
* HTTP block stays same.
* Need below 2 sep files in /etc/nginx/conf.d/
* Specify the IP address for each site with the listen directive.
* Can't use default_server

These sites are served using the same certificate and key placed into /root/certs/example.com/. 

* /etc/nginx/conf.d/example1.com.conf

```
  server {
    listen              203.0.113.30:443 ssl;
    listen              [2001:DB8::5]:443 ssl;
    server_name         example1.com www.example1.com;
    root                /var/www/example1.com;
  }

```

* /etc/nginx/conf.d/example2.com.conf

```
  server {
    listen              203.0.113.40:443 ssl;
    listen              [2001:DB8::6]:443 ssl;
    server_name         example2.com www.example2.com;
    root                /var/www/example2.com;
  }
```

***
[Linode: Nginx for HTTPs](https://www.linode.com/docs/web-servers/nginx/enable-tls-on-nginx-for-https-connections/)

***
***