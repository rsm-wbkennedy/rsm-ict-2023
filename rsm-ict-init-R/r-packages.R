## loading library expand the functionality available in R
## using the radiant library
suppressMessages(library(radiant))

## run cluster analysis
describe(shopping)
result <- kclus(shopping, vars = "v1:v6", nr_clus = 3)
summary(result)
plot(result, plots = c("density", "bar"))

## store cluster membership
shopping <- store(shopping, result, name = "clus")
head(shopping)

## Do not install r or python packages that are already
## part of the rsm-jupyter image/container
## First check if you already have what you need and
## install new packages locally only if needed

## to check if an R-package is already installed use the below
ret <- require("some-package", quietly = TRUE)
ret

## do you have any default package repos set? if not, run
## "setup" from a terminal in JupyterLab or Rstudio
getOption("repos")

## if you are using Rstudio use the command below to check what
## options are set and R-commands run when R starts up
usethis::edit_r_profile()

## if you are using an R-notebook you can see the
## content of the .Rprofile file using the command below
rprof <- readLines("~/.Rprofile", warn = FALSE)
print(rprof)

## where are R-packages installed?
.libPaths() # libs without your username or without a ~ are for system installs
install.packages("fortunes", .libPaths()[2]) # does this work? it may not in an R-notebook
if (require("fortunes", quietly = TRUE)) {
    ## this section is only relevant is you could install the package
    fortunes::fortune()

    ## check to see where this package was installed
    installed.packages()["fortunes", c("LibPath", "Version")]

    ## remove the package
    remove.packages("fortunes")
}

## is there already a personal library for R-packages?
.libPaths()

## this is the location preset for the personal library
Sys.getenv("R_LIBS_USER")

## R should create these automatically but lets do it manually
fs::dir_create(Sys.getenv("R_LIBS_USER"), recurse = TRUE)

## if you are using Rstudio go to Session > Restart R
## if you are using an R-notebook go to Kernel > Restart Kernel

install.packages("fortunes", lib = Sys.getenv("R_LIBS_USER"))
installed.packages()["fortunes", c("LibPath", "Version")]

## packages will now go to personal library by default
## because it is first in .libPaths()
.libPaths()
remove.packages("fortunes", lib = .libPaths())
install.packages("fortunes")
installed.packages()["fortunes", "LibPath"]

## can you build packages that need to be built from source?
## install the development version of purrr
## if you have a GitHub account you can get a PAT from
## https://github.com/settings/tokens
## you should add the token to your ~/.Renviron file as follows:
## GITHUB_PAT = "your-token"
remotes::install_github("tidyverse/purrr", upgrade = "never")
packageVersion("purrr")

## if the above worked, lets remove the package again
remove.packages("purrr", lib = Sys.getenv("R_LIBS_USER"))

## what packages are installed on your system?
installed.packages()[, "Package"]
installed.packages(lib.loc = Sys.getenv("R_LIBS_USER"))[, "Package"]

## cleanup by executing the command below from a terminal
## this will throw an error if run in the R console because
## it is not an R command
# clean

## after "clean" try the command below again
installed.packages(lib.loc = Sys.getenv("R_LIBS_USER"))[, "Package"]