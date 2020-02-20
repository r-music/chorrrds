#' simplify_chords
#'
#' Simplifies music chords extracted with the chords package, eliminating
#' chords extensions, such as 4th, 5th, 6th, 7th, 9th, sus. It leaves
#' the chords in the simplest format possible. 
#'
#' @param data character. The chords to be simplified.
#'
#' @return The dataset with a new column called "chord_simplified"
#' with the simplified version of the chords.  
#' @examples{
#' \donttest{
#'   songs <- get_songs("tim-maia")
#'   chords <- get_chords(songs$url[2])
#'   simplify_chords(chords)
#'}
#'}
#' @export

simplify_chords <- function(data){
  data <- data %>% 
    dplyr::mutate(
      chord_simplified = 
        stringr::str_extract(.data[["chord"]], pattern = "^([A-G]#?b?)"))
  return(data)
}
