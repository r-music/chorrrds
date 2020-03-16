#' get_songs
#'
#' Get songs names from an artist.
#'
#' @param artist character. The artist's name.
#' @return If the artist (or band) is found, it is returned a database
#' with the song names and URLs.
#' @examples{
#' \donttest{
#'   get_songs("jorge")
#'   get_songs("los-hermanos")
#'}
#'}
#' @export
get_songs <- function(artist){
  artist <- stringr::str_remove_all(
    artist, "\\.|'") %>% 
    stringr::str_replace_all("\\/", " ") %>% 
    stringr::str_replace_all(" ", "-") %>% 
    stringr::str_replace_all("&", "And") 
  
  x <- 
    tryCatch(
      xml2::read_html(paste0("https://www.cifraclub.com.br/", 
                             artist)) %>% 
        rvest::html_nodes("#js-a-songs li .art_music-link"),
      error = function(e) e )
  
  if(inherits(x, "error") | length(x) == 0) {
    df <- data.frame(url = "Not Found", song =  "Not Found")
  } else {
    urls <- rvest::html_attr(x, "href")
    songs <- rvest::html_attr(x, "title")
    df <- dplyr::tibble(url = urls, song = songs)
    dplyr::filter(df, !grepl("letra", .data[["url"]]))
    
  }
  return(dplyr::as_tibble(df))
}
