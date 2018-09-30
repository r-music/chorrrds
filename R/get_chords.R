#' get_chords
#'
#' Get chords from an artist.
#'
#' @param songs character. The song url.
#' @param nf TRUE of FALSE. If the chords of a song are not found,
#' should we return this information on the database?
#'
#' @return A database with the chords of the input songs, if
#' found.
#' @examples{
#' \donttest{
#'   songs <- chorrrds::get_songs("tim-maia")
#'   get_chords(songs$url[4])
#'}
#'}
#' @export


get_chords <- function(songs, nf = FALSE){
  mm <- list()
  suppressWarnings(
    if(length(songs) != 0){
      for(j in 1:length(songs)){
        cif <- paste0("https://www.cifraclub.com.br", songs[j]) %>%
          readLines() %>%
          XML::htmlTreeParse(asText = TRUE,
                             useInternalNodes = TRUE,
                             encoding = "utf-8")
        chords <- cif %>%  XML::getNodeSet(path = "//pre/b",
                                           fun = XML::xmlValue)

        key <- cif %>%  XML::getNodeSet(path = "//span/a[@class=
                                        'js-modal-trigger']",
                                        fun = XML::xmlValue)
        da <- plyr::ldply(chords, data.frame)

        if(length(key) == 1 && length(chords) != 0){
          names(da) <- "chord"
          mm[[j]] <- data.frame(chord = da$chord,
                                key = key[[1]],
                                music = songs[j])
        } else{
          if(nf == TRUE){
            mm[[j]] <-  data.frame(chord = "Not Found",
                                   key = "Not Found",
                                   music = songs[j])
          }
        }
      }
    } )

  base <- mm %>% purrr::map_dfr(data.frame)
  base$music <- base$music %>%
    stringr::str_replace_all("-", " ") %>%
    stringr::str_replace_all("/", " ") %>%
    stringr::str_replace_all("^ *", "") %>%
    stringr::str_replace_all(" $", "")

  return(base)
}
