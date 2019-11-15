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
#'   songs <- chorrrds::get_songs("tim-maia")
#'   get_chords(songs$url[4])
#'}
#'}
#' @export


get_chords <- function(song_url, nf = FALSE){
  
  extract <- function(url){
    cif <- paste0("https://www.cifraclub.com.br", url) %>%
      readLines() %>%
      XML::htmlTreeParse(asText = TRUE,
                         useInternalNodes = TRUE,
                         encoding = "utf-8")
    
    chords <- cif %>%  XML::getNodeSet(path = "//pre/b",
                                      fun = XML::xmlValue) %>% 
      purrr::as_vector()
    
    key <- cif %>%  XML::getNodeSet(path = "//span/a[@class=
                                        'js-modal-trigger']",
                                    fun = XML::xmlValue)
    
    if(!is.null(chords)){
      result <- data.frame(chords,
                           key = key[[1]],
                           song = url)
    }
    else{ if(nf == TRUE){
      result <-  data.frame(chord = "Not Found",
                            key = "Not Found",
                            song = url)
    }
    }
    return(result)
    
  }
  
  if(is.data.frame(song_url) & "url" %in% names(songs)){
    song_url <- song_url %>% dplyr::pull(url) %>% 
      as.vector()
  }
  
  
  saf <- purrr::safely(extract, otherwise = NULL)

  
  suppressWarnings(
    df <- song_url %>% purrr::map(saf) %>%
      purrr::map("result") %>% 
      purrr::map_dfr(data.frame)
    )
  

  parsed_names <- df$song %>%
    stringr::str_replace_all("-", " ") %>%
    stringr::str_replace_all("/", " ") %>%
    stringr::str_replace_all("^ *", "") %>%
    stringr::str_replace_all(" $", "") %>% 
    stringr::str_split(" ", n = 2)
  
  df <- df %>% 
    dplyr::mutate(
      artist = purrr::map_chr(parsed_names, 1),
      song = purrr::map_chr(parsed_names, 2)) %>% 
    dplyr::mutate_if(is.character, dplyr::funs(stringr::str_to_title(.)))
      
  return(df)
  
} 
