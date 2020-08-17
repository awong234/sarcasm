
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

# Python module `pysnark`

There is also a python module included:

``` r
pysnark = reticulate::import_from_path(module = 'pysnark.sarcasm', path = system.file(package = 'sarcasm', 'pysnark'))
pysnark$sarcastic(text)
```

``` 
[1] "pYthonIsTAS" "r_uSERs"    
```

``` r
pysnark$sarcastic(pysnark$sarcastic)
```

    [1] "<funCTion SARCAStiC AT 0X000000002903d1F0>"
