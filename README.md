
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wordpiece.data

<!-- badges: start -->
<!-- badges: end -->

The goal of wordpiece.data is to provide stable, versioned data for use
in the
{[wordpiece](https://github.com/macmillancontentscience/wordpiece)}
tokenizer package.

## Installation

You can install the released version of wordpiece.data from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("wordpiece.data")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("macmillancontentscience/wordpiece.data")
```

## Dataset Creation

The datasets included in this package were retrieved from huggingface
(specifically,
[cased](https://huggingface.co/bert-base-cased/resolve/main/vocab.txt)
and
[uncased](https://huggingface.co/bert-base-uncased/resolve/main/vocab.txt)).
They were then processed using the
{[wordpiece](https://github.com/macmillancontentscience/wordpiece)}
package. This is a bit circular, because this package will be used as a
dependency for the wordpiece package.

``` r
vocab_txt <- tempfile(fileext = ".txt")
download.file(
  url = "https://huggingface.co/bert-base-cased/resolve/main/vocab.txt", 
  destfile = vocab_txt
)
parsed_vocab <- wordpiece::load_vocab(vocab_txt)
rds_filename <- paste0(
  paste(
    "wordpiece",
    "cased",
    length(parsed_vocab),
    sep = "_"
  ),
  ".rds"
)
saveRDS(parsed_vocab, here::here("inst", "rds", rds_filename))
unlink(vocab_txt)

vocab_txt <- tempfile(fileext = ".txt")
download.file(
  url = "https://huggingface.co/bert-base-uncased/resolve/main/vocab.txt", 
  destfile = vocab_txt
)
parsed_vocab <- wordpiece::load_vocab(vocab_txt)
rds_filename <- paste0(
  paste(
    "wordpiece",
    "uncased",
    length(parsed_vocab),
    sep = "_"
  ),
  ".rds"
)
saveRDS(parsed_vocab, here::here("inst", "rds", rds_filename))
unlink(vocab_txt)
```

## Example

You likely won’t ever need to use this package directly. It contains a
function to load data used by
{[wordpiece](https://github.com/macmillancontentscience/wordpiece)}.

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
