#' Pipe operator
#'
#' See \code{\link[magrittr]{\%>\%}} for more details.
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @export
#' @importFrom magrittr %>%
#' @examples{
#'
#'   iris %>% as.matrix()
#'}
NULL

#  Negates match operator
#'
#' This function negates the match operator.
#'
#' @name not_in
#' @keywords internal
#' @export
#' @examples{
#' a <- "a"
#' ab <- c("a", "b")
#'   not_in(a, ab)
#'}

not_in <- function(x,y)!('%in%'(x,y))

# Get rid of NOTES
globalVariables(c(".", ".data"))

