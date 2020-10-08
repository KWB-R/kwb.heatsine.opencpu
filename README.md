[![Appveyor build Status](https://ci.appveyor.com/api/projects/status/github/KWB-R/kwb.heatsine.opencpu?branch=master&svg=true)](https://ci.appveyor.com/project/KWB-R/kwb-heatsine-opencpu/branch/master)
[![Travis build Status](https://travis-ci.org/KWB-R/kwb.heatsine.opencpu.svg?branch=master)](https://travis-ci.org/KWB-R/kwb.heatsine.opencpu)
[![codecov](https://codecov.io/github/KWB-R/kwb.heatsine.opencpu/branch/master/graphs/badge.svg)](https://codecov.io/github/KWB-R/kwb.heatsine.opencpu)
[![Project Status](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/kwb.heatsine.opencpu)]()

# kwb.heatsine.opencpu

Contains higher level functions build on top of R
package kwb.heatsine for connecting with OPENCPU.

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
