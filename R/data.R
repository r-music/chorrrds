#' dist
#'
#' A simple measure of the chords distances in the circle
#' of fifths.
#'
#' @format A data frame with 3 variables:
#' \describe{
#'   \item{\code{prox}}{factor. The chord.}
#'   \item{\code{dist}}{numeric. The distance from C in the
#'   circle of fifths. }
#'   \item{\code{order}}{integer. The order in the circle of
#'   fifths.}
#' }
"dist"

#' all
#'
#' All data available.
#'
#' @format A data frame with 6 variables:
#' \describe{
#'   \item{\code{date}}{integer.The date of the album which contains the
#'   music.}
#'   \item{\code{music}}{factor. The name of the music. }
#'   \item{\code{popul}}{integer. The popularity of the music.}
#'   \item{\code{chord}}{factor. The chord names of each music,
#'   by order of occurrence in the music. }
#'   \item{\code{key}}{factor. The key for each music.}
#'   \item{\code{artist}}{factor. The name of the artist}
#' }
"all"

#' eqv
#'
#' Accessory data for the recognition of equivalent keys, including major
#' and minor relatives.
#'
#' @format A data frame with 3 variables:
#' \describe{
#'   \item{\code{key}}{factor. Keys ordered by the circle of fifths.}
#'   \item{\code{minor.rel}}{factor. Relative minors of the key
#'   in the previous column. }
#'   \item{\code{rep}}{num. A number indicating if the key scale is
#'   equivalent to some other; repeated numbers indicate equivalent
#'   keys. }
#' }
"eqv"

#' deg_min
#'
#' Accessory data with the chords present in each scale, with
#' its respective degrees, for the minor cases.
#'
"deg_min"

#' deg_maj
#'
#' Accessory data with the chords present in each scale, with
#' its respective degrees, for the minor cases.
#'
"deg_maj"

#' genre
#'
#' Accessory data with the genre for each artist in the package.
#'
"genre"


