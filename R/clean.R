#' clean
#'
#' Clean data when there is some excessive long text on a column.
#'
#' @param da a data.frame.
#' @param column  string. The column by which we want to make the cleaning.
#' @param long numeric. The longest string we wish exists on our
#' column.
#' @return A database, with the text cleaning done.
#' @examples{
#' \dontrun{
#'   clean(da  = da, column = "chord", long = 15)
#'  }
#'}
#' @export
#'
#'

clean <- function(da, column = "chord", long = 15){
  if(column %in% names(da)){
    pat <- da[ , column] %>%
      as.factor() %>%
      levels() %>%
      as.data.frame() %>%
      dplyr::filter(nchar(as.character(.)) > long)

    names(pat) <- "chord"

    filt <- da[as.character(da[ , column]) %!in% pat$chord, ]
    rem <- dim(da)[1] - dim(filt)[1]
    print(paste0(rem, " lines removed"))
    return(filt)
  } else {
    print("Column name not found.")
  }
}
