---
title: angular deploy
lang: en
---

***

##### Build in watch mode
```
  ng build --watch
```

##### Serve it
```
  lite-server --baseDir="dist/project-name"
```

##### Build production app
```
  ng build --prod
```

* Copy everything within the output folder (dist/ by default) to a folder on the server.

* Configure the server to redirect requests for missing files to index.html.  See server-side redirects.

##### Server deployment: nginx


* The browser makes a direct request to the server for a URL, bypassing the router.

```
  try_files $uri $uri/ /index.html;
```

##### Deploy to GitHub pages
```
  ng build --prod --output-path docs --base-href /<project_name>/
```

* When the build is complete, make a copy of docs/index.html and name it docs/404.html.

* Commit your changes and push.

* On the GitHub project page, configure it to publish from the docs folder.

***
[Angular Deployment](https://angular.io/guide/deployment)
***
***
