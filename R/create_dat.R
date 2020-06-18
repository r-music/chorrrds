#' create_dat
#'
#' Break song by verse with chords and corresponding lyrics.
#'
#' @param artist character. The artist's name.
#' @param track character. The song's title.
#' @return An object of type `data.frame` with the song chords and lyrics is retuned. 
#' The object is to be later used in the `create_net()` function to get accurate connections between chords and words.
#' 
#' @examples{
#' \donttest{
#'   create_dat("The Weeknd", "Acquainted")
#'}
#'}
#' @export

create_dat <- function(artist, track){
  
  # Chords
  notes     = c('A','B','C','D','E','F','G')
  flats     = 'b'
  minor     = 'm'
  sharps    = '#'
  all_notes = c(notes, 
                paste0(notes, flats),
                paste0(notes, sharps),
                paste0(notes, minor),
                paste0(notes, flats, sharps),
                paste0(notes, minor, sharps),
                paste0(notes, flats, minor),
                paste0(notes, flats, sharps, minor))
  
  artist   <- chorrrds::get_songs(artist)
  song     <- artist[which(artist$song == track), 1]
  html_url <- xml2::read_html(paste0("https://www.cifraclub.com.br",
                                     song))
  
  chords_lyrics <- rvest::html_nodes(html_url, "pre") %>% 
    rvest::html_text()
  
  chords_lyrics <- 
    chords_lyrics %>% 
    stringr::str_remove_all(pattern = "[0-9]|[-][0-9][-]|\\||[0-9][br]|~")
  
  chords <- dplyr::tibble(V1 = sapply(chords_lyrics, function(x) strsplit(x, "\n")[[1]], USE.NAMES=FALSE))
  
  chords_dat <- as.data.frame(cbind(rep(NA, nrow(chords)/2),
                                    rep(NA, nrow(chords)/2)))
  
  for (i in 1:nrow(chords)) {
    
    ifelse(any(unlist(stringr::str_split(as.character(chords[i, 1]), " ")) %in% all_notes) == TRUE,
           chords_dat[i, 1] <- as.character(chords[i, 1]),
           chords_dat[i, 2] <- as.character(chords[i, 1])
    )
    
  }
  
  chords_dat <- chords_dat[ grep("Intro:", chords_dat$V1, invert = TRUE), ]
  chords_dat <- chords_dat[ grep("--", chords_dat$V2, invert = TRUE), ]
  chords_dat[,1] <- sub("( *)(\\w+)", "\\2\\1", chords_dat[,1])    # put all the first chords at the beginning of the verse (keeping he same spaces between more than two chords)
  suppressWarnings(chords_dat <- chords_dat %>%
                     dplyr::mutate_at( c("V2"), dplyr::funs(dplyr::lead), n = 1 ))
  chords_dat <- chords_dat[ stats::complete.cases(chords_dat), ]
  
  for (i in 1:nrow(chords_dat)) {                                  # take only chords that are linked to some lyrics
    
    if( nchar(chords_dat[i, 1]) > nchar(chords_dat[i, 2]) ) {
      
      nch <- nchar(chords_dat[i, 1]) - nchar(chords_dat[i, 2])
      chords_dat[i, 1] <- stringr::str_sub(chords_dat[i, 1], 1, stringr::str_length(chords_dat[i, 1])-nch)
      
    }
  }
  
  chords_dat <- chords_dat[!apply(chords_dat == "", 1, all), ]
  chords_dat$V2 <- trimws(chords_dat$V2, "l")
  chords_dat$V2 <- paste(" ", chords_dat$V2)
  if(rlang::is_empty(which(chords_dat[, 2] == "  ")) == FALSE){           # remove occasional blank rows (e.g., chords_dat[[9]])
    chords_dat <- chords_dat[-which(chords_dat[, 2] == "  "), ]
  }
  rownames(chords_dat) <- NULL
  rownames(chords_dat) <- as.numeric(rownames(chords_dat))
  colnames(chords_dat) <- c("chord", "lyric")
  return(chords_dat)
}