## asdmonitor 0.1-2  
## ASD Control Chart 

**asdmonitor** is a R package for implementing ASD control charts.

## <span style="color:green"> **Installation** </span> 

Using [**Rstudio**](https://www.rstudio.com/products/rstudio/download/) is recommended for installation and usage

### <span style="color:green"> 1.  Install package **remotes** from CRAN (if not already installed) </span>

Use the **Rstudio** menu 

or write in the R console
```{r}
install.packages("remotes")
```

### <span style="color:green"> 2.  Install package **rchemo** (if not already installed) </span>

Write in the R console
```{r}
remotes::install_github("mlesnoff/rchemo", dependencies = TRUE, 
  build_vignettes = TRUE)
```
In case of the following question during installation process:
```{r}
These packages have more recent versions available.
Which would you like to update?"
```
it is recommended to skip updates (usually choice **3** = None)


### <span style="color:green"> 3. Install package **asdmonitor** </span> 

**a) Most recent version**

Write in the R console
```{r}
remotes::install_github("mlesnoff/asdmonitor", dependencies = TRUE)
```
In case of the following question during installation process:
```{r}
These packages have more recent versions available.
Which would you like to update?"
```
it is recommended to skip updates (usually choice **3** = None)

**b) Any given tagged version**

e.g. with tag "v1.0-0"

write in the R console
```{r}
remotes::install_github("mlesnoff/asdmonitor@v1.0-0", dependencies = TRUE)
```

### <span style="color:green"> 4. Usage </span>

Write in the R console
```{r}
library(asdmonitor)
```

Run the interface
```{r}
asdmonitor()
```

## <span style="color:green"> **Author** </span> 

**Matthieu Lesnoff**

- Cirad, [**UMR Selmet**](https://umr-selmet.cirad.fr/en), Montpellier, France

- [**ChemHouse**](https://www.chemproject.org/ChemHouse), Montpellier

**matthieu.lesnoff@cirad.fr**






