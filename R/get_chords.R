#' get_chords
#'
#' Extracts music chords from an artist.
#'
#' @param song_url The song URLs to be used for the chords collection. 
#' Can be either a character vector or straightforwardly the result of the 
#' `get_songs()` function. 
#' @param nf logical. If the chords of a song are not found,
#' should we return this information in the final result?
#'
#' @return An object of type `tibble` with the chords sequences, key, song names and name of the artist.
#' 
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
      result <- data.frame(chord = chords, 
                           key = key, 
                           song = url, 
                           stringsAsFactors = FALSE)
    } else if(nf == TRUE){
      result <-  data.frame(chord = "Not Found", 
                            key = "Not Found", 
                            song = url, 
                            stringsAsFactors = FALSE)
    }
    result
  }
  
  if(is.data.frame(song_url) & "url" %in% names(song_url)){
    artist <- unique(song_url$artist)[1]
    song_url <- song_url$url
  } 

  saf <- purrr::safely(extract, otherwise = NULL)
  
  suppressWarnings(
    df <- song_url %>% purrr::map(saf) %>%
      purrr::map("result") %>% 
      purrr::map_dfr(data.frame)
    )

  if(nrow(df) == 0){
    df <- data.frame(
      chord = "Not Found", 
      key = "Not Found", 
      song = "Not Found"
    )
    
    warning("These was an error with the data collection
and the chords could not be found.")
    
    print(dplyr::as_tibble(df))
    return(dplyr::as_tibble(df))
  }
  
  parsed_names <- strsplit(df$song, "/")
  
  df <- df %>% 
    dplyr::mutate(
      artist = sapply(parsed_names, "[", 1),
      song = sapply(parsed_names, "[", 2)) %>% 
    dplyr::mutate_at(c("artist", "song"), list(~stringr::str_to_title(.))) 
      
  return(dplyr::as_tibble(df))
} 
