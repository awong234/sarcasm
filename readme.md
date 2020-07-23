
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

``` 
[1] "pYThONiStAS" "r_usERs"    
```

Comes with shorthand as well.

``` r
text %>% `/s`
```

``` 
[1] "pyThOnistaS" "r_uSERS"    
```

## Error handler

Make a mockery of those dreadful errors.

``` r
sarcastic_errors()
A = rnorm
A[10]
```

<pre><code><span style='color: red;'>ErRoR in A[10]: OBjECT OF TyPe 'closure' Is nOt sUBsEtTabLe
<span></pre>

</code>

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

``` 
[1] "PYthOnIsTaS" "R_UsErs"    
```

``` r
py_sarc$sarcastic(py_sarc$sarcastic)
```

    [1] "<fuNctIoN sArCAstIc AT 0x0000000028452aF8>"
