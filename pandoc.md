---
title: 'Pandoc'
lang: en
---

***

[pandoc markdown](pandoc/pdmarkdown.html)

***

##### Standalone pandoc html
```
    pandoc -s -o output.html input.md
```

***

##### Explicitly state from/to formats
```
    pandoc -f markdown -t html hello.md
```

***

##### Generate table of contents; use CSS stylesheet 
```
    pandoc -s --toc -c pandoc.css mypage.md -o mypage.html
```

***

##### Display template, add own template
```
    pandoc -D html5
    
    pandoc --template mytemp.html -s -o output.html input.md
```

***

##### Create PDF
```
    pandoc test.txt -o test.pdf
```

***

##### Translate webpage to markdown
```
    pandoc -f html -t markdown https://www.fsf.org -o fsf.md
```

***

##### Convert doc to/from UTF-8 
```
    iconv -t utf-8 input.txt | pandoc | iconv -f utf-8
```

***
***