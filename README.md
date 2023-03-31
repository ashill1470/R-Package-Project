
<!-- README.md is generated from README.Rmd. Please edit that file -->

# RPackProj

<!-- badges: start -->
<!-- badges: end -->

The goal of RPackProj is to use `df_apply` function to deal with
changing values of certain columns in a data frame.

Authors: Andrew Hill, Richmond Yevudza, and Yuquian Wang

## Installation

You can install the development version of RPackProj from
[GitHub](https://github.com/) with:
<https://github.com/ashill1470/RPackProj>

``` r
# install.packages("devtools")
devtools::install_github("ashill1470/RPackProj")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(RPackProj)

df <- data.frame(
  A = c(1, 2, 3),
  B = c(4, 5, 6),
  C = c("foo", "bar", "baz")
)

df_apply(df, function(x) x * 2, is.numeric)
#>   A  B   C
#> 1 2  8 foo
#> 2 4 10 bar
#> 3 6 12 baz

df
#>   A B   C
#> 1 1 4 foo
#> 2 2 5 bar
#> 3 3 6 baz
```
