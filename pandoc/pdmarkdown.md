---
title: Pandoc Markdown
lang: en
output: 
    pdmarkdown:
        md_extensions: +fenced_divs+bracketed_spans+example_lists+table_captions+pipe_tables
---

***

:::: {#myDivId .myDivClass}

::: {#nestedDivID .nestedDivClass}

[Span inside paragraph]{.mySpanClass}

Another paragraph

My List

(@)  Numbered item
(@)  Second item

<center>
: <u>**My Pipe Table**</u>

| <u>Name</u> | <u>Age</u> | <u>Score</u> |
|:-----|:---:|------:|
|Bill  | 45  |     99|
|Ted   | 38  |     88|

</center>

:::

::::


***
***