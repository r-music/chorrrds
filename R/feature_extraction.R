#' feature_extraction
#'
#' Extracts features from a chords dataset. 
#'
#' @param data dataframe. The chords dataset to exract the features
#' from.
#'
#' @return A dataframe with the chords set add with  
#' logical features (1 or 0), to indicate if each chord is: 
# - minor 
# - diminished
# - augmented
# - sus 
# - chords with the 7th
# - chords with the major 7th
# - chords with the 6th
# - chords with the 4th
# - chords with the augmented 5th
# - chords with the diminished 5th
# - chords with the 9th
# - chords with varying bass 
#' @examples{
#' \donttest{
#'   songs <- get_songs("tim-maia")
#'   chords <- get_chords(songs$url[4])
#'   feature_extraction(chords)
#'}
#'}
#' @export
feature_extraction <- function(data){
  id <- c("minor", "dimi", "augm", "sus", "seventh", "seventh_M", "sixth", 
          "fourth", "fifth_aug", "fifth_dim", "ninth", "bass")
  pat <- c("m", "dim|\u00b0", "aug|\\+", "sus", "7", "7(M|\\+)", "(6|13)", 
           "(4|11)", "5(#|\\+)", "5(b|-)", "(9|2)", "/[A-G]")
  feat <- lapply(pat, function(x) as.integer(grepl(x, data$chord))) %>% 
    stats::setNames(id) %>%
    as.data.frame(stringsAsFactors = FALSE)
  dplyr::bind_cols(data, feat)
}
