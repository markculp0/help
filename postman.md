---
title: Postman
lang: en
---

***

#### Linux Fedora install
```
  sudo tar xvzf postman-linux-x64.tar.gz -C /opt
```

***

#### Create symbolic link, i.e., ln -s &lt;path&gt; &lt;lnk&gt;
```
  sudo ln -s /opt/Postman/Postman /usr/bin/postman

  sudo ln -s /opt/rstudio-1.2.5001/bin/rstudio /usr/local/bin/rs
```

***

#### Postman application icon
```
  cat << EOF > ~/.local/share/applications/postman2.desktop
  [Desktop Entry]
  Name=Postman
  GenericName=API Client
  X-GNOME-FullName=Postman API Client
  Comment=Make and view REST API calls and responses
  Keywords=api;
  Exec=/opt/Postman/Postman
  Terminal=false
  Type=Application
  Icon=/opt/Postman/app/resources/app/assets/icon.png
  Categories=Development;Utilities;
  EOF
```

***
***


***

***