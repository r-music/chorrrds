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
  if(!is.null(data)){
    chords_ngram <- data %>% 
      dplyr::mutate(date = 
                      forcats::fct_explicit_na(date)) %>% 
      dplyr::mutate(
        chords_ngram = zoo::rollapply(chord, n, paste0, 
                                      collapse = " ", 
                                      align = 'right', 
                                      partial = TRUE, 
                                      fill = "")
      )
  }
  return(chords_ngram)
}


