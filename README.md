[![R-CMD-check](https://github.com/KWB-R/kwb.heatsine.opencpu/workflows/R-CMD-check/badge.svg)](https://github.com/KWB-R/kwb.heatsine.opencpu/actions?query=workflow%3AR-CMD-check)
[![pkgdown](https://github.com/KWB-R/kwb.heatsine.opencpu/workflows/pkgdown/badge.svg)](https://github.com/KWB-R/kwb.heatsine.opencpu/actions?query=workflow%3Apkgdown)
[![codecov](https://codecov.io/github/KWB-R/kwb.heatsine.opencpu/branch/main/graphs/badge.svg)](https://codecov.io/github/KWB-R/kwb.heatsine.opencpu)
[![Project Status](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/kwb.heatsine.opencpu)]()

# kwb.heatsine.opencpu

Contains higher level functions build on top of R
package [kwb.heatsine](https://github.com/kwb-r/kwb.heatsine) for connecting with 
[OpenCPU](https://opencpu.org).

## Installation

For details on how to install KWB-R packages checkout our [installation tutorial](https://kwb-r.github.io/kwb.pkgbuild/articles/install.html).

```r
### Optionally: specify GitHub Personal Access Token (GITHUB_PAT)
### See here why this might be important for you:
### https://kwb-r.github.io/kwb.pkgbuild/articles/install.html#set-your-github_pat

# Sys.setenv(GITHUB_PAT = "mysecret_access_token")

# Install package "remotes" from CRAN
if (! require("remotes")) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Install KWB package 'kwb.heatsine.opencpu' from GitHub
remotes::install_github("KWB-R/kwb.heatsine.opencpu")
```

## Documentation

Release: [https://kwb-r.github.io/kwb.heatsine.opencpu](https://kwb-r.github.io/kwb.heatsine.opencpu)

Development: [https://kwb-r.github.io/kwb.heatsine.opencpu/dev](https://kwb-r.github.io/kwb.heatsine.opencpu/dev)
