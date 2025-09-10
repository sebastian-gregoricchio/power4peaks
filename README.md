![release](https://img.shields.io/github/v/release/sebastian-gregoricchio/power4peaks)
[![license](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://sebastian-gregoricchio.github.io/power4peaks/LICENSE.md/LICENSE)
[![R-CMD-check](https://github.com/sebastian-gregoricchio/power4peaks/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/sebastian-gregoricchio/power4peaks/actions/workflows/R-CMD-check.yaml)
[![pkgdown](https://github.com/sebastian-gregoricchio/power4peaks/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/sebastian-gregoricchio/power4peaks/actions/workflows/pkgdown.yaml)
[![Codecov](https://codecov.io/gh/sebastian-gregoricchio/power4peaks/branch/main/graph/badge.svg)](https://codecov.io/gh/sebastian-gregoricchio/power4peaks)
[![forks](https://img.shields.io/github/forks/sebastian-gregoricchio/power4peaks?style=social)](https://github.com/sebastian-gregoricchio/power4peaks/fork)
<!-- ![update](https://badges.pufler.dev/updated/sebastian-gregoricchio/power4peaks)
![visits](https://badges.pufler.dev/visits/sebastian-gregoricchio/power4peaks) -->
<!---![downloads](https://img.shields.io/github/downloads/sebastian-gregoricchio/power4peaks/total.svg)--->




# power4peaks [<img src="https://sebastian-gregoricchio.github.io/power4peaks/resources/power4peaks_logo.png" align="right" height = 150/>](https://sebastian-gregoricchio.github.io/power4peaks)
An R-package for power and sample size calculations for genpeaks data (ChIP-seq, ATAC-seq, CUT&amp;Tag/RUN, etc.)

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
These can be installed from the bioconductor archive source:

```r
# Install SSPA package from gitHub path
install.packages("https://www.bioconductor.org/packages/3.12/bioc/src/contrib/SSPA_2.30.0.tar.gz",
                 type = "source")
```

Alternatively the source file is available in this repository in the directory `resources`.

<br />

## Installation of `power4peaks`
```r
# Install remotes from CRAN
install.packages("remotes")

# Install the Rseb package
remotes::install_github("sebastian-gregoricchio/power4peaks",
                        build_manual = TRUE,
                        build_vignettes = TRUE)
```
<br />

<br />

## Documentation
With the package a [web-manual](https://sebastian-gregoricchio.github.io/power4peaks/manual/index.html) and a [vignette](https://sebastian-gregoricchio.github.io/power4peaks/doc/power4peaks.overview.vignette.html) are available.
The vignette can be inspected on R as well by typing `browseVignettes("power4peaks")`.

<br />

## Package history and releases
A list of all releases and respective description of changes applied could be found [here](https://sebastian-gregoricchio.github.io/power4peaks/NEWS).

<br />

-----------------
## Contact
For any suggestion, bug fixing, commentary please report it in the [issues](https://github.com/sebastian-gregoricchio/power4peaks/issues)/[request](https://github.com/sebastian-gregoricchio/power4peaks/pulls) tab of this repository.

## License
This package is under a [GNU General Public License (version 3)](https://sebastian-gregoricchio.github.io/power4peaks/LICENSE).

<br />

#### Contributors
![contributors](https://badges.pufler.dev/contributors/sebastian-gregoricchio/power4peaks?size=50&padding=5&bots=true)
