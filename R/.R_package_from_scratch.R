### How to build an R package from scratch
install.packages(pkgs = c("usethis", "remotes", "usethis", "fs"), repos = "https://cran.rstudio.com")
remotes::install_github("kwb-r/kwb.pkgbuild")
remotes::install_github("ropenscilabs/travis@v0.3.0.9004")
usethis::create_package(".")
fs::file_delete(path = "DESCRIPTION")


author <- list(name = "Michael Rustler",
               orcid = "0000-0003-0647-7726",
               url = "https://mrustl.de")

pkg <- list(name = "kwb.heatsine.opencpu",
            title = "Wrapper for R package kwb.heatsine for OpenCPU usage",
            desc  = paste("Contains higher level functions build on top of R package kwb.heatsine",
                          "for connecting with OPENCPU."))


kwb.pkgbuild::use_pkg(author,
                      pkg,
                      version = "0.0.0.9000",
                      stage = "experimental")


usethis::use_vignette("Tutorial")

### R functions
travis::

kwb.pkgbuild::use_autopkgdown("kwb.heatsine.opencpu")

kwb.pkgbuild::create_empty_branch_ghpages("kwb.heatsine.opencpu")

kwb.pkgbuild::use_gitlab_ci_ghpages()

travis::use_travis_deploy(key_name_private = "id_rsa", endpoint = ".com")
