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
#' \dontrun{
#'   lhs \%>\% rhs
#'  }
#'}
NULL

#  Negates match operator
#'
#' This function negates the macth operator.
#'
#' @name not_in
#' @keywords internal
#' @export
#' @examples{
#' \dontrun{
#'   not_in(this_is_not, in_this)
#'  }
#'}

not_in <- function(x,y)!('%in%'(x,y))


