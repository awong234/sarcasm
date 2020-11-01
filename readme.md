
# `{sarcasm}`

## Usage

Produces sArCaStic text from a character vector.

``` r
set.seed(2)
text = 'pythonistas'
sarcastic(text)
```

    [1] "pYThONiStAS"

``` r
set.seed(2)
text = c('pythonistas', 'r_users')
sarcastic(text)
```

    [1] "pYThONiStAS" "r_usERs"

Comes with shorthand as well.

``` r
text %>% `/s`
```

    [1] "pyThOnistaS" "r_uSERS"

## Error handler

Make a mockery of those dreadful errors:

``` r
sarcastic_errors()
A = rnorm
A[10]
```

<pre><code><span style='color: red;'>ErRoR in A[10]: OBjECT OF TyPe 'closure' Is nOt sUBsEtTabLe
<span></pre>
</code>

Prank your friends by placing this in their `.Rprofile`:

``` r
options(ridicule_probability = 1)
demoralizing_errors(silent = TRUE)
A[10]
```

<pre><code><span style='color: red;'>
Error in A[10] : object of type 'closure' is not subsettable. HuZzah Wow WeE YoU'Re a wEll-mAdE cOdEr.
<span></pre>
</code>

The function makes use of and corrupts the `praise` package to offer
mockery after errors are encountered, optionally with probability
specified in the options to make it an unexpected surprise.

## Installation

``` r
remotes::install_github("https://github.com/awong234/sarcasm")
```

# Python module `pysnark`

There is also a python module included:

``` r
pysnark = reticulate::import_from_path(module = 'pysnark.sarcasm', path = system.file(package = 'sarcasm', 'pysnark'))
pysnark$sarcastic(text)
```

    [1] "pYthonISTas" "R_usErs"

``` r
pysnark$sarcastic(pysnark$sarcastic)
```

    [1] "<FunCTiOn sARcasTIc AT 0X00000000250bd1f0>"
