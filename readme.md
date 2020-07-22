
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
