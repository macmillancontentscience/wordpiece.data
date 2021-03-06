# Copyright 2021 Bedford Freeman & Worth Pub Grp LLC DBA Macmillan Learning.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#' Load a wordpiece Vocabulary
#'
#' A wordpiece vocabulary is a named integer vector with class
#' "wordpiece_vocabulary". The names of the vector are the tokens, and the
#' values are the integer identifiers of those tokens. The vocabulary is
#' 0-indexed for compatibility with Python implementations.
#'
#' @return A wordpiece_vocabulary.
#' @param cased Logical; load the uncased vocabulary, or the cased vocabulary?
#' @export
#'
#' @examples
#' head(wordpiece_vocab())
#' head(wordpiece_vocab(cased = TRUE))
wordpiece_vocab <- function(cased = FALSE) {
  filetype <- "uncased"
  n_tokens <- 30522L

  if (cased) {
    filetype <- "cased"
    n_tokens <- 28996L
  }

  return(
    .load_inst_rds(filetype, n_tokens)
  )
}

#' Load an RDS from inst Dir
#'
#' @inheritParams .get_path
#'
#' @return The R object.
#' @keywords internal
.load_inst_rds <- function(filetype, n_tokens) {
  return(readRDS(.get_path(filetype, n_tokens)))
}

#' Generate the inst path
#'
#' @param filetype Character scalar; the type of file, like "uncased".
#' @param n_tokens Integer scalar; The number of tokens used for that file.
#'
#' @return Character scalar; the path to the file.
#' @keywords internal
.get_path <- function(filetype, n_tokens) {
  return(
    system.file(
      "rds",
      paste0(
        paste(
          "wordpiece",
          filetype,
          n_tokens,
          sep = "_"
        ),
        ".rds"
      ),
      package = "wordpiece.data"
    )
  )
}
