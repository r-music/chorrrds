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
#'   \item{\code{key}}{factor. Keys ordened by the circle of fifths.}
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


#' ad_calcanhotto
#'
#' Data with information about the music chords of Adriana Calcanhotto.
#'
#' @format A data frame with 6 variables:
#' \describe{
#'   \item{\code{date}}{integer. The date of the album which contains the
#'   music.}
#'   \item{\code{music}}{factor. The name of the music. }
#'   \item{\code{popul}}{integer. The popularity of the music.}
#'   \item{\code{chord}}{factor. The chord names of each music,
#'   by order of occurrence in the music. }
#'   \item{\code{key}}{factor. The key for each music.}
#'   \item{\code{artist}}{factor. The name of the artist}
#' }
"ad_calcanhotto"

#' adoniran_barbosa
#'
#' Data with information about the music chords of Adoniran Barbosa.
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
"adoniran_barbosa"

#' alceu_valenca
#'
#' Data with information about the music chords of Alceu Valença.
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
"alceu_valenca"

#' alcione
#'
#' Data with information about the music chords of Alcione.
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
"alcione"

#' almir_guineto
#'
#' Data with information about the music chords of Almir Guineto.
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
"almir_guineto"

#' ana_carolina
#'
#' Data with information about the music chords of Ana Carolina.
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
"ana_carolina"

#' arlindo_cruz
#'
#' Data with information about the music chords of Arlindo Cruz.
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
"arlindo_cruz"

#' belchior
#'
#' Data with information about the music chords of Belchior.
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
"belchior"

#' benito_paula
#'
#' Data with information about the music chords of Benito di Paula.
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
"benito_paula"

#' beth_carvalho
#'
#' Data with information about the music chords of Beth Carvalho.
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
"beth_carvalho"

#' bezerra_silva
#'
#' Data with information about the music chords of Bezerra Silva.
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
"bezerra_silva"

#' bruno_marrone
#' Data with information about the music chords of Bruno & Marrone.
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
"bruno_marrone"

#' caetano
#'
#' Data with information about the music chords of Caetano Veloso.
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
"caetano"

#' cartola
#'
#' Data with information about the music chords of Cartola.
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
"cartola"

#' cassia_eller
#'
#' Data with information about the music chords of Cassia Eller.
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
"cassia_eller"

#' cazuza
#'
#' Data with information about the music chords of Cazuza.
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
"cazuza"

#' charlie_brown_jr
#'
#' Data with information about the music chords of Charlie Brown Jr.
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
"charlie_brown_jr"

#' chico_buarque
#'
#' Data with information about the music chords of Chico Buarque.
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
"chico_buarque"


#' chitaozinho_xororo
#'
#' Data with information about the music chords of Chitãozinho & Xororó.
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
"chitaozinho_xororo"

#' clara_nunes
#'
#' Data with information about the music chords of Clara Nunes.
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
"clara_nunes"

#' cleber_cauan
#'
#' Data with information about the music chords of Cleber & Cauan.
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
"cleber_cauan"

#' cristiano_araujo
#'
#' Data with information about the music chords of Cristiano Araujo.
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
"cristiano_araujo"

#' daniel
#'
#' Data with information about the music chords of Daniel.
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
"daniel"

#' demonios_garoa
#'
#' Data with information about the music chords of Demonios da Garoa.
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
"demonios_garoa"

#' detonautas
#'
#' Data with information about the music chords of Detonautas.
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
"detonautas"

#' diogo_nogueira
#'
#' Data with information about the music chords of Diogo Nogueira.
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
"diogo_nogueira"

#' djavan
#'
#' Data with information about the music chords of Djavan.
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
"djavan"

#' dorival_caymmi
#'
#' Data with information about the music chords of Dorival Caymmi.
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
"dorival_caymmi"

#' dudu_nobre
#'
#' Data with information about the music chords of Dudu Nobre.
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
"dudu_nobre"

#' edson_hudson
#'
#' Data with information about the music chords of Edson & Hudson.
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
"edson_hudson"

#' eduardo_costa
#'
#' Data with information about the music chords of Eduardo Costa.
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
"eduardo_costa"

#' elis_regina
#'
#' Data with information about the music chords of Elis Regina.
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
"elis_regina"

#' eng_hawaii
#'
#' Data with information about the music chords of Engenheiros do Hawaii.
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
"eng_hawaii"

#' fagner
#'
#' Data with information about the music chords of Fagner.
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
"fagner"

#' felipe_araujo
#'
#' Data with information about the music chords of Felipe Araujo.
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
"felipe_araujo"

#' fernando_sorocaba
#'
#' Data with information about the music chords of Fernando & Sorocaba.
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
"fernando_sorocaba"

#' fundo_quintal
#'
#' Data with information about the music chords of Fundo de Quintal.
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
"fundo_quintal"

#' geraldo_azevedo
#'
#' Data with information about the music chords of Geraldo Azevedo.
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
"geraldo_azevedo"

#' gilberto_gil
#'
#' Data with information about the music chords of Gilberto Gil.
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
"gilberto_gil"

#' gusttavo_lima
#'
#' Data with information about the music chords of Gusttavo Lima.
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
"gusttavo_lima"

#' henrique_juliano
#'
#' Data with information about the music chords of Henrique & Juliano.
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
"henrique_juliano"

#' ivone_lara
#'
#' Data with information about the music chords of Ivone Lara.
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
"ivone_lara"

#' jads_jadson
#'
#' Data with information about the music chords of Jads & Jadson.
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
"jads_jadson"

#' jair_rodrigues
#'
#' Data with information about the music chords of Jair Rodrigues.
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
"jair_rodrigues"

#' joao_nogueira
#'
#' Data with information about the music chords of João Nogueira.
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
"joao_nogueira"

#' jorge_aragao
#'
#' Data with information about the music chords of Jorge Aragão.
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
"jorge_aragao"

#' jorge_ben_jor
#'
#' Data with information about the music chords of Jorge Ben Jor.
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
"jorge_ben_jor"

#' jorge_mateus
#'
#' Data with information about the music chords of Jorge & Mateus.
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
"jorge_mateus"

#' jorge_vercillo
#'
#' Data with information about the music chords of Jorge Vercillo.
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
"jorge_vercillo"

#' jota_quest
#'
#' Data with information about the music chords of Jota Quest.
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
"jota_quest"

#' katinguele
#'
#' Data with information about the music chords of Katinguelê.
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
"katinguele"

#' kid_abelha
#'
#' Data with information about the music chords of Kid Abelha.
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
"kid_abelha"

#' leandro_leonardo
#'
#' Data with information about the music chords of Leandro & Leonardo.
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
"leandro_leonardo"

#' leci_brandao
#'
#' Data with information about the music chords of Leci Brandão.
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
"leci_brandao"

#' legiao_urbana
#'
#' Data with information about the music chords of Legião Urbana.
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
"legiao_urbana"

#' leoni
#'
#' Data with information about the music chords of Leoni.
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
"leoni"

#' luan_santana
#'
#' Data with information about the music chords of Luan Santana.
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
"luan_santana"

#' lucas_lucco
#'
#' Data with information about the music chords of Lucas Lucco.
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
"lucas_lucco"

#' luiz_gonzaga
#'
#' Data with information about the music chords of Luiz Gonzaga.
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
"luiz_gonzaga"

#' lupcinio_rodrigues
#'
#' Data with information about the music chords of Lupcinio Rodrigues.
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
"lupcinio_rodrigues"

#' maiara_maraisa
#'
#' Data with information about the music chords of Maiara & Maraisa.
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
"maiara_maraisa"

#' mamonas
#'
#' Data with information about the music chords of Mamonas Assassinas.
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
"mamonas"

#' marcos_belutti
#'
#' Data with information about the music chords of Marcos & Belutti.
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
"marcos_belutti"

#' maria_gadu
#'
#' Data with information about the music chords of Maria Gadu.
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
"maria_gadu"

#' marilia_mendonca
#'
#' Data with information about the music chords of Marília Mendonça.
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
"marilia_mendonca"

#' marisa_monte
#'
#' Data with information about the music chords of Marisa Monte.
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
"marisa_monte"

#' martinho_vila
#'
#' Data with information about the music chords of Martinho da Vila.
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
"martinho_vila"

#' matheus_kauan
#'
#' Data with information about the music chords of Matheus & Kauan.
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
"matheus_kauan"

#' milton
#'
#' Data with information about the music chords of Milton Nascimento.
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
"milton"

#' mil_ze_rico
#'
#' Data with information about the music chords of Milhonário & Zé Rico.
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
"mil_ze_rico"

#' mumuzinho
#'
#' Data with information about the music chords of Mumuzinho.
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
"mumuzinho"

#' nando_reis
#'
#' Data with information about the music chords of Nando Reis.
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
"nando_reis"

#' nelson_cavaquinho
#'
#' Data with information about the music chords of Nelson Cavaquinho.
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
"nelson_cavaquinho"

#' noel_rosa
#'
#' Data with information about the music chords of Noel Rosa.
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
"noel_rosa"

#' nx_zero
#'
#' Data with information about the music chords of Nx Zero.
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
"nx_zero"

#' o_rappa
#'
#' Data with information about the music chords of O Rappa.
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
"o_rappa"

#' originais_samba
#'
#' Data with information about the music chords of Os Originais do Samba.
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
"originais_samba"

#' paralamas
#'
#' Data with information about the music chords of Paralamas do Sucesso.
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
"paralamas"

#' paula_fernandes
#'
#' Data with information about the music chords of Paula Fernandes.
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
"paula_fernandes"

#' paulinho_viola
#'
#' Data with information about the music chords of Paulinho da Viola.
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
"paulinho_viola"

#' pitty
#'
#' Data with information about the music chords of Pitty.
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
"pitty"

#' pixinguinha
#'
#' Data with information about the music chords of Pixinguinha.
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
"pixinguinha"

#' raul_seixas
#'
#' Data with information about the music chords of Raul Seixas.
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
"raul_seixas"

#' reinaldo
#'
#' Data with information about the music chords of Reinaldo.
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
"reinaldo"

#' rita_lee
#'
#' Data with information about the music chords of Rita Lee.
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
"rita_lee"

#' roberta_campos
#'
#' Data with information about the music chords of Roberta Campos.
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
"roberta_campos"

#' sambo
#'
#' Data with information about the music chords of Sambô.
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
"sambo"

#' sergio_reis
#'
#' Data with information about the music chords of Sérgio Reis.
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
"sergio_reis"

#' seu_jorge
#'
#' Data with information about the music chords of Seu Jorge.
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
"seu_jorge"

#' simone_simaria
#'
#' Data with information about the music chords of Simone & Simaria.
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
"simone_simaria"

#' simone
#'
#' Data with information about the music chords of Simone.
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
"simone"

#' skank
#'
#' Data with information about the music chords of Skank.
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
"skank"

#' supercombo
#'
#' Data with information about the music chords of Supercombo.
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
"supercombo"

#' thiago_brava
#'
#' Data with information about the music chords of Thiago Brava.
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
"thiago_brava"

#' tiao_carreiro_pardinho
#'
#' Data with information about the music chords of Tião Carreiro &
#' Pardinho.
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
"tiao_carreiro_pardinho"

#' tim_maia
#'
#' Data with information about the music chords of Tim Maia.
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
"tim_maia"

#' titas
#'
#' Data with information about the music chords of Titãs.
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
"titas"

#' toquinho
#'
#' Data with information about the music chords of Toquinho.
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
"toquinho"

#' tribalistas
#'
#' Data with information about the music chords of Os Tribalistas.
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
"tribalistas"

#' trio_parada_dura
#'
#' Data with information about the music chords of Trio Parada Dura.
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
"trio_parada_dura"

#' vanessa_da_mata
#'
#' Data with information about the music chords of Vanessa da Mata.
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
"vanessa_da_mata"


#' victor_leo
#'
#' Data with information about the music chords of Victor & Leo.
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
"victor_leo"

#' zeca_baleiro
#'
#' Data with information about the music chords of Zeca Baleiro.
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
"zeca_baleiro"

#' ze_neto_cristiano
#'
#' Data with information about the music chords of Zé Neto & Cristiano.
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
"ze_neto_cristiano"

#' ze_ramalho
#'
#' Data with information about the music chords of Zé Ramalho.
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
"ze_ramalho"

#' zeze_luciano
#'
#' Data with information about the music chords of Zezé di Camargo &
#' Luciano.
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
"zeze_luciano"

