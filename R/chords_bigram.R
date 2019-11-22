#' chords_ngram
#'
#' Builds chords ngrams for a chord datdaset. 
#'
#' @param data dataframe. The chords dataset to exract the features
#' from.
#' @param n  numeric. The number of grams. The default is 2 
#' (bigram).  
#' @return A chords dataset added with the chords ngram.
#' @examples{
#' \donttest{
#'   songs <- chorrrds::get_songs("tim-maia")
#'   chords <- get_chords(songs$url[4])
#'   chords_ngram(chords)
#'}
#'}
#' @export
chords_ngram <- function(data, n = 2){
  f <- function(x){
    i2 <- seq_along(x)
    i <- (i2 - n + 1)
    i[i < 1] <- 1
    sapply(mapply(`:`, i, i2), function(j) paste(x[j], collapse = " "))
  }
  dplyr::mutate(data, chords_ngram = f(.data[["chord"]]))
}
