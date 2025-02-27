![release](https://img.shields.io/github/v/release/sebastian-gregoricchio/power4omics)
[![license](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://sebastian-gregoricchio.github.io/power4omics/LICENSE.md/LICENSE)
[![forks](https://img.shields.io/github/forks/sebastian-gregoricchio/power4omics?style=social)](https://github.com/sebastian-gregoricchio/power4omics/fork)
<!-- ![update](https://badges.pufler.dev/updated/sebastian-gregoricchio/power4omics)
![visits](https://badges.pufler.dev/visits/sebastian-gregoricchio/power4omics) -->
<!---![downloads](https://img.shields.io/github/downloads/sebastian-gregoricchio/power4omics/total.svg)--->

# power4omics [<img src="https://sebastian-gregoricchio.github.io/power4omics/power4omics_logo.svg" align="right" height = 150/>](https://sebastian-gregoricchio.github.io/power4omics)
An R-package for power and sample size calculations for genomics data (ChIP-seq, ATAC-seq, CUT&amp;Tag/RUN, etc.)

<br>

## Introduction
Add introduction here



### Citation
If you use this package, please cite:

<div class="warning" style='padding:2.5%; background-color:#ffffee; color:#787878; margin-left:5%; margin-right:5%; border-radius:15px;'>
<span>
<font size="-0.5">

<div style="margin-left:2%; margin-right:2%; text-align: justify">
"No publication associated yet"

XYZ *et al.*, *XYZ* (20XYZ)

*doi*: [none](https://doi.org/none)
</div>
</font>

</span>
</div>


<br>


## Dependencies/Requirements
Some functions require [SSPA](https://www.bioconductor.org/packages/3.12/bioc/html/SSPA.html), package not available anymore on Bioconductor.
These can be installed from the source available in this repository:

```r
# Download the source and then:
install.packages("SSPA_2.30.0.tar.gz", type ="source", repos = NULL)

# or alternativerly
# Install SSPA package
install.packages("https://github.com/sebastian-gregoricchio/power4omics/blob/main/resources/SSPA_2.30.0.tar.gz", type ='source', repos = NULL)
```

<br />

## Installation of `power4omics`
```r
# Install devtools from CRAN
install.packages("devtools")

# Or the development version from GitHub:
## install.packages("devtools")
## devtools::install_github("r-lib/devtools")

# Install the Rseb package
devtools::install_github("sebastian-gregoricchio/power4omics",
                         build_manual = TRUE,
                         build_vignettes = TRUE)
```
<br />

<br />

## Documentation
With the package a [web-manual](https://sebastian-gregoricchio.github.io/power4omics/reference/index.html) and a [vignette](https://sebastian-gregoricchio.github.io/power4omics/doc/power4omics.overview.vignette.html) are available.
The vignette can be inspected on R as well by typing `browseVignettes("power4omics")`.

<br />

## Package history and releases
A list of all releases and respective description of changes applied could be found [here](https://sebastian-gregoricchio.github.io/power4omics/NEWS).

<br />

-----------------
## Contact
For any suggestion, bug fixing, commentary please report it in the [issues](https://github.com/sebastian-gregoricchio/power4omics/issues)/[request](https://github.com/sebastian-gregoricchio/power4omics/pulls) tab of this repository.

## License
This package is under a [GNU General Public License (version 3)](https://sebastian-gregoricchio.github.io/power4omics/LICENSE.md/LICENSE).

<br />

#### Contributors
![contributors](https://badges.pufler.dev/contributors/sebastian-gregoricchio/power4omics?size=50&padding=5&bots=true)
