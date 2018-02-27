#' get_songs
#'
#' Get songs names from an artist.
#'
#' @param artist character. The artist's name.
#' @return If the artist (or band) is found, it is returned a database
#' with the song names and URLs.   
#' @examples{
#'   get_songs("chico-buarque")
#'   \dontshow{
#'   get_songs("jorge")
#'   }
#'  }
#' @export

get_songs <- function(artist){
  urls <- paste0("https://www.cifraclub.com.br/", artist) %>% 
    readLines() %>% 
    XML::htmlTreeParse(asText = TRUE, 
                       useInternalNodes = TRUE, 
                       encoding = "utf-8") %>% 
    XML::xpathSApply("//ul[@id='js-a-songs']//li//a
                       [@class='art_music-link']/@href")
  songs <- urls %>%      
    stringr::str_replace_all("-", " ") %>% 
    stringr::str_replace_all("/", " ") %>% 
    stringr::str_replace_all("^ *", "") %>% 
    stringr::str_replace_all(" $", "")
  
  da <- data.frame(url = urls, name = songs)
  return(da)
}
