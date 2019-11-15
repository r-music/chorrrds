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
  artist <- stringr::str_replace_all(artist, " ", "-")
  x <- xml2::read_html(paste0("https://www.cifraclub.com.br/", artist)) %>% 
    rvest::html_nodes("#js-a-songs li .art_music-link")
  urls <- rvest::html_attr(x, "href")
  songs <- rvest::html_attr(x, "title")
  df <- data.frame(url = urls, song = songs, stringsAsFactors = FALSE) 
  dplyr::filter(df, !grepl("letra", .data[["url"]])) 
}
