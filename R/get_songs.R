#' get_songs
#'
#' Get songs names and URLs for an artist.
#'
#' @param artist character. The artist's name.
#' @return If the artist (or band) is found, an object of type 
#' `tibble` with the song names, URLs  and artist is retuned. 
#' The URLs are to be later used in the `get_chords()` function. 
#' 
#' @examples{
#' \donttest{
#'   get_songs("jorge")
#'   get_songs("los-hermanos")
#'}
#'}
#' @export
get_songs <- function(artist){
  
  artist_formatted <- stringr::str_remove_all(
    artist, "\\.|'") %>% 
    stringr::str_replace_all("\\/", " ") %>% 
    stringr::str_replace_all(" ", "-") %>% 
    stringr::str_replace_all("&", "And") 
  
  x <- 
    tryCatch(
      xml2::read_html(paste0("https://www.cifraclub.com.br/", 
                             artist_formatted)) %>% 
        rvest::html_nodes("#js-a-songs li .art_music-link"),
      error = function(e) e )
  
  if(inherits(x, "error") | length(x) == 0) {
    df <- data.frame(url = "Not Found", song =  "Not Found")
  } else {
    urls <- rvest::html_attr(x, "href")
    songs <- rvest::html_attr(x, "title")
    df <- dplyr::tibble(
      url = urls, 
      song = songs, 
      artist = stringr::str_to_title(artist)) %>% 
      dplyr::filter(!grepl("letra", .data[["url"]]))
  }
  return(dplyr::as_tibble(df))
}
