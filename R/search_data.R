#' search_data
#'
#' Search artists in the available package database.
#'
#' @param name character.
#'
#' @return If a database with the corresponding searched name
#'         is found, it's name is returned. If not, nothing is returned.
#' @examples{
#'   search_artist("chico")
#'   \dontshow{
#'   search_artist("jorge")
#'   }
#'  }
#' @export
#'
#'

search_artist <- function(name){

  av_data <- data(package = "choRds")$results[ ,3]

  for(i in 1:length(av_data)){
    cond <- grepl(name, av_data[i])
    data(alceu_valenca)
    if(cond == TRUE){
      print(av_data[i])
    } else {
      print("Name not found.")
    }
  }

}

