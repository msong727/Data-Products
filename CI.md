---
title       : Confidence Interval - Shiny App
subtitle    : CI for mean
author      : Miseon Song
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



### Confidence Interval for mean when sigma is known

Applet: [http://msong727.shinyapps.io/Confidence_Interval] (http://msong727.shinyapps.io/Confidence_Interval)
<br> 
This applet  simulates sampling from a population with a mean mu and a standard deviation sigma. For each sample, the confidence intervals on the mean are computed based on the sample mean and population sample standard deviation. 
The intervals for the various samples are displayed by horizontal lines as shown next slide. 

###  How to Use

Input variables are
  *      mu      : population mean
  *      sigma   : population standard deviation
  *      n       : sample size
  *      m       : number of samples
  *      Confidence Level : default 95%

---

## Confidence Interval Calculator

<img class="center" src="CI_App.png" height=480>


---

## server.R

<img class="center" src="server.png" height=500>

---

## ui.R

<img class="center" src="UI.png" height=450>







