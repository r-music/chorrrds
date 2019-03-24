#' feature_extraction
#'
#' Extracts features from a chords dataset. 
#'
#' @param data dataframe. The chords dataset to exract the features
#' from.
#'
#' @return A dataframe with the chords set add with  
#' logical features, to indicate if each chord is: 
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
#'   songs <- chorrrds::get_songs("tim-maia")
#'   chords <- get_chords(songs$url[4])
#'   feature_extraction(chords)
#'}
#'}
#' @export

feature_extraction <- function(data){
  if(!is.null(data)){
    data_feat <- data %>% 
      dplyr::mutate(
        # minor chords
        minor = stringr::str_detect(chord, "m") * 1,
        # diminished
        dimi = stringr::str_detect(chord, "(dim|\\??)") * 1,
        # augmented
        aum = stringr::str_detect(chord, "(aug|\\+)") * 1,
        # sus 
        sus = stringr::str_detect(chord, "(sus)") * 1,
        # chords with the 7th
        seventh = stringr::str_detect(chord, "7") * 1,
        # chords with the major 7th
        seventh_M = stringr::str_detect(chord, "7(M|\\+)" ) * 1,
        # chords with the 6th
        sixth = stringr::str_detect(chord, "(6|13)") * 1,
        # chords with the 4th
        fourth = stringr::str_detect(chord, "(4|11)") * 1,
        # chords with the augmented 5th
        fifth_aug = stringr::str_detect(chord, "5(#|\\+)") * 1,
        # chords with the diminished 5th
        fifth_dim = stringr::str_detect(chord, "5(b|-)") * 1,
        # chords with the 9th
        ninth = stringr::str_detect(chord, "(9|2)") * 1,
        # chords with varying bass
        bass = stringr::str_detect(chord, 
                                   pattern = "(?<=/).*")*1
      )
    return(data_feat)
  }
}
