#' get_chords
#'
#' Extracts music chords from an artist.
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
  
  extract <- function(url){
    cif <- paste0("https://www.cifraclub.com.br", url) %>%
      readLines() %>%
      XML::htmlTreeParse(asText = TRUE,
                         useInternalNodes = TRUE,
                         encoding = "utf-8")
    
    chord <- cif %>%  XML::getNodeSet(path = "//pre/b",
                                      fun = XML::xmlValue) %>% 
      purrr::as_vector()
    
    
    key <- cif %>%  XML::getNodeSet(path = "//span/a[@class=
                                        'js-modal-trigger']",
                                    fun = XML::xmlValue)
    
    if(!is.null(chord)){
      result <- data.frame(chord,
                           key = key[[1]],
                           music = url)
    }
    else{ if(nf == TRUE){
      result <-  data.frame(chord = "Not Found",
                            key = "Not Found",
                            music = url)
    }
    }
    return(result)
    
  }
  
  saf <- purrr::safely(extract, otherwise = NULL)
  
  suppressWarnings(
    df <- songs %>% purrr::map(saf) %>%
      purrr::map("result") %>% 
      purrr::map_dfr(data.frame))
  
  df$music <- df$music %>%
    stringr::str_replace_all("-", " ") %>%
    stringr::str_replace_all("/", " ") %>%
    stringr::str_replace_all("^ *", "") %>%
    stringr::str_replace_all(" $", "")
  
  return(df)
  
} 