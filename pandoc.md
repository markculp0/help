---
title: 'Pandoc help'
---

***

[pandoc markdown](pandoc/pdmarkdown.html)

***

##### Standalone pandoc html
* pandoc -s -o output.html input.txt

***

##### Explicitly state from/to formats
* pandoc -f markdown -t html hello.md

***

##### Create PDF
* pandoc test.txt -o test.pdf

***

##### Translate webpage to markdown
* pandoc -f html -t markdown https://www.fsf.org -o fsf.md

***

##### Convert doc to/from UTF-8 
* iconv -t utf-8 input.txt | pandoc | iconv -f utf-8

***
***