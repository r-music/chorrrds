#' clean
#'
#' Clean data when there is some excessive long text on a column.
#'
#' @param data a data.frame.
#' @param column  string. The column by which we want to make the cleaning.
#' @param long numeric. The longest string we wish exists on our
#' @param message logical. Should the function print how many lines
#' were removed?
#' @return A database, with the text cleaning done.
#' @examples{
#'\dontrun{
#' data("caetano")
#'   clean(data  = caetano, column = "chord", long = 15, message = TRUE)
#'}
#'}
#' @export
#'

clean <- function(data, column = "chord", long = 15, message = TRUE){
  if(column %in% names(data)){
    filt <- data %>% 
      dplyr::mutate(long_str = stringr::str_length(.data[[column]])) %>% 
      dplyr::filter(.data[["long_str"]] <= long) %>% 
      dplyr::select(-long_str)
  
    rem <- nrow(data) - nrow(filt)
    if(message){
      print(paste0(rem, " rows removed"))
    }
  } else {
    if(message){
      print("Column name not found.")
    }
  }
  return(filt)
}

