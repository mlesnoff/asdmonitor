## asdmonitor 0.1-1  
## ASD Control Chart 

R package for implementing ASD control charts.

Using Rstudio is recommended for installation and usage (https://www.rstudio.com/products/rstudio/download/).

### Installation from Github

1. Install **devtools** package from the CRAN (if not already done)

```{r}
install.packages("devtools")
```
2. Load **devtools** and then install **rnirs** package  (if not already done)

```{r}
library(devtools)
install_github("mlesnoff/rnirs", dependencies = TRUE)
```
3. Install **asdmonitor**

```{r}
install_github("mlesnoff/asdmonitor", dependencies = TRUE)
```

### Usage 

Load **asdmonitor**

```{r}
library(asdmonitor)
```
Run the interface

```{r}
asdmonitor()
```






