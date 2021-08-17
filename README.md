
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wordpiece.data

<!-- badges: start -->
<!-- badges: end -->

The goal of wordpiece.data is to provide stable, versioned data for use
in the [{wordpiece}](https://github.com/jonathanbratt/wordpiece)
tokenizer package.

## Installation

You can install the released version of wordpiece.data from
[CRAN](https://CRAN.R-project.org) with:

``` r
# Not yet.
#install.packages("wordpiece.data")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("macmillancontentscience/wordpiece.data")
```

## Example

You likely won’t ever need to use this package directly. It contains a
function to load data used by
{[wordpiece](https://github.com/jonathanbratt/wordpiece)}.

``` r
library(wordpiece.data)

head(wordpiece_vocab())
#>     [PAD] [unused0] [unused1] [unused2] [unused3] [unused4] 
#>         0         1         2         3         4         5
```

## Code of Conduct

Please note that the wordpiece.data project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## Disclaimer

This is not an officially supported Macmillan Learning product.

## Contact information

Questions or comments should be directed to Jonathan Bratt
(<jonathan.bratt@macmillan.com>) and Jon Harmon
(<jonthegeek@gmail.com>).
