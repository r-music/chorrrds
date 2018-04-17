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

#  Negate %in% operator
#'
#' This function negates the %in% operator.
#'
#' @name '%!in%'
#' @keywords internal
#' @export
#' @examples{
#' \dontrun{
#'   this_is_not '%!in%' in_this
#'  }
#'}

'%!in%' <- function(x,y)!('%in%'(x,y))
