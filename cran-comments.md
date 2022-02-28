# Resubmission

## Changes

* Breaking change: The wordpiece vocabularies are now character vectors, rather than named integer vectors.

## Test environments
* local R installation, R 4.1.2 (Windows 10)
* win-builder (devel)
* Windows Server 2008 R2 SP1, R-devel, 32/64 bit (rhub)
* Ubuntu Linux 20.04.1 LTS, R-release, GCC (rhub)
* Fedora Linux, R-devel, clang, gfortran (rhub)

There is a NOTE when testing for Windows Server:

```
* checking for detritus in the temp directory ... NOTE
Found the following files/directories:
  'lastMiKTeXException'
```

I cannot reproduce this error on my Windows machine, and a web search indicated that it is likely nothing. This package is very simple and I can't find anything that could possibly trigger that error.

## R CMD check results

0 errors | 0 warnings | 0 notes

* These words in DESCRIPTION are NOT misspelled: Tokenization, tokenize, wordpiece, Wordpiece.


## Reverse dependencies

wordpiece 2.1.2 handles the difference between this version of wordpiece.data and the previous version.
