#' search_data
#'
#' Search artists in the available package database.
#'
#' @param name character. The searched artist's name.
#'
#' @return If a database with the corresponding searched name
#'         is found, it's name is returned. If not, nothing is returned.
#' @examples{
#'    search_data("chico")
#'   \dontshow{
#'   search_data("jorge")
#'   }
#'}
#' @export
#'
#'

search_data <- function(name){
  av_data <- utils::data(package = "chorrrds")$results[ ,3]

  for(i in 1:length(av_data)){
    cond <- grepl(name, av_data[i])

    if(cond == TRUE){
      print(av_data[i])
      test <- 1
    } else {
      test <- 0
    }
  }

  if(test == 0){
    print("End of research.") }
}

