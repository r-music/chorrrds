#' get_chords
#'
#' Extracts music chords from an artist.
#'
#' @param song_url character. The song url.
#' @param nf TRUE of FALSE. If the chords of a song are not found,
#' should we return this information on the database?
#'
#' @return A database with the chords of the input songs, if
#' found.
#' @examples{
#' \donttest{
#'   songs <- get_songs("tim-maia")
#'   get_chords(songs$url[2])
#'}
#'}
#' @export
get_chords <- function(song_url, nf = FALSE){
  
  extract <- function(url){
    x <- xml2::read_html(paste0("https://www.cifraclub.com.br", url))
    key <- rvest::html_node(x, "#cifra_tom a") %>% rvest::html_text()
    chords <- rvest::html_nodes(x, "pre b") %>% rvest::html_text()
    url <- gsub("-", " ", gsub("^/|/$", "", url))
    if(length(chords)){
      result <- data.frame(chord = chords, key = key, song = url, 
                           stringsAsFactors = FALSE)
    } else if(nf == TRUE){
      result <-  data.frame(chord = "Not Found", key = "Not Found", song = url, 
                            stringsAsFactors = FALSE)
    }
    result
  }
  
  if(is.data.frame(song_url) & "url" %in% names(song_url)){
    song_url <- song_url %>% dplyr::pull(url) %>% 
      as.vector()
  }
  
  saf <- purrr::safely(extract, otherwise = NULL)

  suppressWarnings(
    df <- song_url %>% purrr::map(saf) %>%
      purrr::map("result") %>% 
      purrr::map_dfr(data.frame)
    )

  parsed_names <- strsplit(df$song, "/")
  
  df <- df %>% 
    dplyr::mutate(
      artist = sapply(parsed_names, "[", 1),
      song = sapply(parsed_names, "[", 2)) %>% 
    dplyr::mutate_at(c("artist", "song"), list(~stringr::str_to_title(.)))
      
  return(df)
  
} 
