#' clean
#'
#' Clean data when there is some excessive long text on a column.
#'
#' @param da a data.frame.
#' @param column  string. The column by which we want to make the cleaning.
#' @param long numeric. The longest string we wish exists on our
#' @param message logical. Should the function print how many lines
#' were removed?
#' @return A database, with the text cleaning done.
#' @examples{
#'\dontrun{
#' data("caetano")
#'   clean(da  = caetano, column = "chord", long = 15, message = TRUE)
#'}
#'}
#' @export
#'

clean <- function(da, column = "chord", long = 15, message = TRUE){
  if(column %in% names(da)){
    filt <- da %>% 
      dplyr::mutate(long_str = stringr::str_length(!!column)) %>% 
      dplyr::filter(.data[["long_str"]] <= long)
  
    rem <- dim(da)[1] - dim(filt)[1]
    if(message){
      print(paste0(rem, " lines removed"))
    }
    return(filt)
  } else {
    if(message){
      print("Column name not found.")
    }
  }
}

