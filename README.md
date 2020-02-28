## asdmonitor 0.1-1  
## ASD Control Chart 

**asdmonitor** is a R package for implementing ASD control charts.

Using Rstudio is recommended for installation and usage (https://www.rstudio.com/products/rstudio/download/).

## Installation from Github

##### 1. For the first installation and if not already done

a. For Windows, install Rtools

Download the **Rtools.exe** available at

https://cran.r-project.org/bin/windows/Rtools/

and run it.

The Rtools site gives indications for other operating systems. 

b. Install Rstudio

https://www.rstudio.com/products/rstudio/download/

c. Install package **devtools**  from the CRAN. Package devtools uses Rtools for facilitating packages installations. Use the Rstudio menu or write in the R console

```{r}
install.packages("devtools")
```
##### 2. Load **devtools** and install **rnirs** package. Write in the R console

```{r}
library(devtools)
install_github("mlesnoff/rnirs", dependencies = TRUE)
```

In case of the following question during installation
```{r}
These packages have more recent versions available.
Which would you like to update?"
```
it is recommended to skip updates.

##### 3. Install **asdmonitor**

```{r}
install_github("mlesnoff/asdmonitor", dependencies = TRUE)
```

## Usage 

Load **asdmonitor**

```{r}
library(asdmonitor)
```
Run the interface

```{r}
asdmonitor()
```






