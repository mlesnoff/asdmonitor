# R package asdmonitor 0.1-1  
### ASD Control Chart

Using Rstudio is recommended (https://www.rstudio.com/products/rstudio/download/).

### Installation

1. Install **devtools** package (if not already done)


```{r}
install.packages(devtools)
```

2. Load **devtools** and then install **rnirs** package  (if not already done)


```{r}
library(devtools)
install_github("mlesnoff/rnirs", build_vignettes = TRUE, dependencies = TRUE)
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






