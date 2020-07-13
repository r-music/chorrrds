#' create_net
#'
#' Match music lyrics with the corresponding chords.
#'
#' @param chords_dat data frame. A data frame as produced by the `create_dat()` function with chords in the first column and lyrics in the second column.
#' @return An object of type `tibble` with the song chords and lyrics is returned.
#' Each chord is linked to the words that are sung when that chord is played.
#' 
#' @examples{
#' \donttest{
#'   chords_dat <- create_dat("The Weeknd", "Acquainted")
#'   create_net(chords_dat)
#'}
#'}
#' @export

create_net <- function(chords_dat){
  
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
  
  # Function to find the min
  findMin <- function(chord, lyric, k){                                   # k will be later used for max number of chords in each verse
    
    # Function to get rid of spaces
    strip_it <- function(x){
      ch_vector <- strsplit(x, "")[[1]]
      ch_vector[c(grep("\\s", ch_vector)) ] <- ""
      indx      <- sapply(ch_vector, nchar)
      return(indx)
    }
    
    # find closest value to chord
    chs_note <- stringr::str_split(gsub("(?<=[\\s])\\s*|^\\s+|\\s+$", "", chord, perl=TRUE), " ")[[1]]
    pos_chr  <- which(!is.na(stringr::str_locate(chord[[1]], strsplit(chord, " ")[[1]]))[,1])[k]
    pos_txt  <- append(0, diff(strip_it(lyric[[1]])))
    pos_txt[pos_txt == -1] <- 0
    pos_min  <- which(pos_txt == 1)
    minim    <- ifelse(pos_chr > pos_min,
                       which.min(abs(pos_chr - pos_min)),
                       which.min(abs(pos_min - pos_chr)))
    
    # find whole word that starts at minim
    pos_txt2  <- strip_it(lyric[[1]])
    ch_vector <- strsplit(lyric[[1]], "")[[1]]
    ch_vector[c(grep("\\s", ch_vector)) ] <- ""
    indx      <- as.data.frame(cbind(V1 = ch_vector, 
                                     V2 = sapply(ch_vector, nchar)))
    rownames(indx) <- NULL
    rownames(indx) <- as.numeric(rownames(indx))
    
    complete <- paste(as.character(indx[pos_min[minim]:
                                          ifelse(length(chs_note) > k, 
                                                 which(!is.na(stringr::str_locate(chord[[1]], strsplit(chord, " ")[[1]])[,1]))[k+1], 
                                                 nrow(indx)), 1]), collapse = "-")
    complete1 <- gsub("\\-\\-", " ", complete)
    
    return(
      
      gsub("\\-", "", complete1, perl=TRUE)
      
    )
  }
  
  # Function to eliminate remaining words
  eliminate_words <- function(first_sentence, second_sentence){
    if(is.na(second_sentence)) return(first_sentence)
    
    first_word            <- stringr::word(second_sentence, 1)
    characters_first_word <- strsplit(first_word, split = "")[[1]]
    
    # Get all possible words that could have remained in the previous 
    # sentence
    words_list <- vector()
    for(i in 1:length(characters_first_word)) {
      words_list[i] <- paste(characters_first_word[1:i], collapse = "")
      
    }
    
    # Eliminate them
    first_sentence <- stringr::str_split(first_sentence, " ")[[1]]
    
    if(first_sentence[length(first_sentence)] %in% words_list){
      first_sentence <- first_sentence[-length(first_sentence)]
    }
    
    first_sentence <- paste0(first_sentence, collapse = " ")
    return(first_sentence)
    
  }
  
  chords_net <- as.data.frame(
    cbind(
      chord = rep(NA, sum(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+"))*max(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+"))),
      lyric = rep(NA, sum(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+"))*max(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+")))
    ))
  
  # chords
  for( i in 1:nrow(chords_dat) ) {
    for( j in 1:stringr::str_count(substring(chords_dat[i, 1], 1, nchar(chords_dat[i, 2])), "\\S+") ) {
      if( stringr::str_count(chords_dat[i, 1], "\\S+") > 1 ){
        
        for( j in 1:stringr::str_count(substring(chords_dat[i, 1], 1, nchar(chords_dat[i, 2])), "\\S+") ) {
          
          chords_net[ match(as.numeric(do.call(paste0, expand.grid(i,j))),
                            sort(as.numeric(do.call(paste0, expand.grid(1:sum(stats::na.omit(stringr::str_count(chords_dat[, 1], "\\S+"))), 1:max(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+"))))))), 1 ] <- substring( chords_dat[i, 1],                                                         # find chords in verse i
                                                                                                                                                                                                                                    sort(unique(stats::na.omit(stringr::str_locate(chords_dat[i, 1], all_notes)[,1])))[j],    # from this position
        }
        
      } else { chords_net[match(as.numeric(do.call(paste0, expand.grid(i,j))),
                                sort(as.numeric(do.call(paste0, expand.grid(1:sum(stats::na.omit(stringr::str_count(chords_dat[, 1], "\\S+"))), 1:max(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+"))))))), 1 ] <- chords_dat[i, 1] }
      
    }
  }
  
  
  # lyrics
  for( i in 1:nrow(chords_dat) ){
    for ( k in 1:stringr::str_count(substring(chords_dat[i, 1], 1, nchar(chords_dat[i, 2])), "\\S+") ){
      
      chords_net[match(as.numeric(do.call(paste0, expand.grid(i,k))),
                       sort(as.numeric(do.call(paste0, expand.grid(1:sum(stats::na.omit(stringr::str_count(chords_dat[, 1], "\\S+"))), 1:max(stringr::str_count(substring(chords_dat[, 1], 1, nchar(chords_dat[, 2])), "\\S+"))))))), 2 ] <- suppressWarnings(findMin(chords_dat[i, 1], chords_dat[i, 2], k)) 
      
    }
  }
  
  chords_net <- chords_net[stats::complete.cases(chords_net$chord), ]
  rownames(chords_net) <- NULL
  rownames(chords_net) <- as.numeric(rownames(chords_net))
  chords_net <- chords_net %>%
    dplyr::mutate(
      second_sentence = dplyr::lead(lyric, n = 1)) %>% 
    dplyr::rowwise() %>% 
    dplyr::mutate(
      lyric = 
        eliminate_words(first_sentence = .data[["lyric"]], 
                        second_sentence = .data[["second_sentence"]])) %>% 
    dplyr::select(-second_sentence) %>% 
    dplyr::mutate(chord = stringr::str_squish(chord))
  
  chords_net <- chords_net[ !apply(chords_net, 1, function(x) any(x == "")), ]
  chords_net$chord <- trimws(chords_net$chord, "l")
  
  for (i in 1:nrow(chords_net)) {
    if(str_count(chords_net[i, 1], '\\w+') >  1){
      chords_net[i, 1] <- str_split(chords_net[i, 1], " ")[[1]][1]
    }
  }
  
  return(chords_net)
  
  options(warn = oldw)
}