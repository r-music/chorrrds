#' create_dat
#'
#' Break song by verse with chords and corresponding lyrics.
#'
#' @param artist character. The artist's name.
#' @param track character. The song's title.
#' @return An object of type `tibble` with the song chords and lyrics is returned. 
#' The object is to be later used in the `create_net()` function to get accurate connections between chords and words.
#' 
#' @examples{
#' \donttest{
#'   create_dat("The Weeknd", "Acquainted")
#'}
#'}
#' @export

create_dat <- function(artist, track){
  
  oldw <- getOption("warn")
  options(warn = -1)
  
  # Chords
  notes     = c('a','b','c','d','e','f','g')
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
                paste0(notes, flats, sharps, minor)
  )
  
  artist   <- chorrrds::get_songs(artist)
  song     <- artist[which(artist$song == track), 1]
  html_url <- xml2::read_html(paste0("https://www.cifraclub.com.br",
                                     song))
  
  chords_lyrics <- rvest::html_nodes(html_url, "pre") %>% 
    rvest::html_text()
  
  chords_lyrics <-                 # this removes the 7th
    chords_lyrics %>% 
    stringr::str_remove_all(pattern = "[0-9]|[-][0-9][-]|\\||[0-9][br]|~")
  
  chords <- dplyr::tibble(V1 = sapply(chords_lyrics, function(x) strsplit(x, "\n")[[1]], USE.NAMES=FALSE))
  chords <- tolower(chords$V1)
  
  chords_dat <- as.data.frame(cbind(rep(NA, nrow(chords)/2),
                                    rep(NA, nrow(chords)/2)))
  
  for (i in 1:nrow(chords)) {
    
    ifelse(any(unlist(stringr::str_split(as.character(chords[i, 1]), " ")) %in% all_notes) == TRUE,
           chords_dat[i, 1] <- as.character(chords[i, 1]),
           chords_dat[i, 2] <- as.character(chords[i, 1])
    )
    
  }
  
  for (i in 1:nrow(chords_dat)) {
    
    if(is.na(chords_dat$V1[i]) == FALSE){
      chords_dat$V2[i] <- chords_dat$V1[i]
    }
    
    if(is.na(chords_dat$V2[i]) == FALSE){
      chords_dat$V1[i] <- chords_dat$V2[i]
    }
    
  }
  
  chords_dat <- chords_dat[ grep("Intro:", chords_dat$V1, invert = TRUE), ]
  chords_dat <- chords_dat[ grep("--", chords_dat$V2, invert = TRUE), ]

  chords_dat[,1] <- sub("( *)(\\w+)", "\\2\\1", chords_dat[,1]) # put all the first chords at the beginning of the verse (keeping he same spaces between more than two chords)
  chords_dat <- chords_dat %>%
                     dplyr::mutate_at( c("V2"), dplyr::funs(lead), n = 1 )
  chords_dat <- chords_dat[ complete.cases(chords_dat), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == "")), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == " ")), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == "  ")), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == "   ")), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == "    ")), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == "     ")), ]
  chords_dat <- chords_dat[ !apply(chords_dat, 1, function(x) any(x == "      ")), ]
  chords_dat$V3 <- NA
  
  for (i in 1:nrow(chords_dat)) {
    
    if(any(stringr::str_split(chords_dat$V1[i], "\\W+")[[1]] %in% all_notes[all_notes != "a"]) == TRUE){
      
      chords_dat$V3[i] <- 1
      
    }
    
    if(any(stringr::str_split(chords_dat$V2[i], "\\W+")[[1]] %in% all_notes[all_notes != "a"]) == TRUE){
      
      chords_dat$V3[i] <- 2
      
    }
    
  }
  chords_dat <- chords_dat[chords_dat$V3 == 1,]
  chords_dat <- chords_dat[ complete.cases(chords_dat), ]
  chords_dat$V3 <- NULL

  chords_dat <- chords_dat[!apply(chords_dat == "", 1, all), ]
  chords_dat$V2 <- trimws(chords_dat$V2, "l")
  chords_dat$V2 <- paste(" ", chords_dat$V2)
  if(rlang::is_empty(which(chords_dat[, 2] == "  ")) == FALSE){           # remove occasional blank rows (e.g., chords_dat[[9]])
    chords_dat <- chords_dat[-which(chords_dat[, 2] == "  "), ]
  }
  rownames(chords_dat) <- NULL
  rownames(chords_dat) <- as.numeric(rownames(chords_dat))
  colnames(chords_dat) <- c("chord", "lyric")
  
  chords_dat <- as_tibble(chords_dat)
  return(chords_dat)
  
  options(warn = oldw)
}