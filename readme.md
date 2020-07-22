
# `{sarcasm}`

Produces sArCaStic text from a character vector.

``` r
set.seed(2)
text = 'pythonistas'
sarcastic(text)
```

    ## [1] "pYThONiStAS"

``` r
set.seed(2)
text = c('pythonistas', 'r_users')
sarcastic(text)
```

    ## [1] "pYThONiStAS" "r_usERs"

Comes with shorthand as well.

``` r
text %>% `/s`
```

    ## [1] "pyThOnistaS" "r_uSERS"

## Installation

``` r
remotes::install_github("https://github.com/awong234/sarcasm")
```

# Python module

There is also a python module included:

``` r
py_sarc = reticulate::import_from_path(module = 'sarcasm.sarcasm', path = 'sarc_python/')
py_sarc$sarcastic(text)
```

    ## [1] "PyTHONisTAs" "R_Users"

``` r
py_sarc$sarcastic(py_sarc$sarcastic)
```

    ## [1] "<FUNCtiON sArcAstic at 0X0000000020A6e840>"
