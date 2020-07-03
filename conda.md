---
title: Conda
lang: en
---

***

##### Check version info
```
    conda info    
```

***

##### Install help
```
    conda install -h   
```

***

##### Help for specific command
```
    cmd --help    
```

***

### Packages

***

##### List packages in current environment
```
    conda list          
```

##### Update conda
```
    conda update conda    
```

##### Install package
```
    conda install PACKAGENAME   
```

##### Install package fm channel
```
    conda install -c anaconda notebook  
```

##### Update package
```
    conda update PACKAGENAME    
```

##### Search for package
```
    conda search PACKAGENAME   
```

##### Remove package
```
    conda remove PACKAGENAME
```

***

### Environments

***

##### Version info
```
    python --version
```

##### List environments
```
    conda env list 
```

#####  Create a new environment named py27, 
#####  install Python 2.7
```
    conda create --name py27 python=2.7  
```

##### Activate the environment
```
    conda activate py27     // Win
    source activate py27    // Linux/Mac
```

##### Deactivate an active environment
```
    conda deactivate      // Win
    source deactivate     // Linux/Mac
```

##### Clone environment
```
    conda create --clone py35 --name py35-2 
```

***
***



