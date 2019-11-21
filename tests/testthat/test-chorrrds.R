context("test-chorrrds")

x <- get_songs("tim-maia")
idx <- which(x$url == "/tim-maia/a-paz-do-meu-mundo-e-voce/")
chords <- get_chords(x$url[idx])

test_that("songs returned as expected", {
  expect_is(x, "data.frame")
  expect_true(all(sapply(x, is.character)))
  expect_true(nrow(x) > 100)
  expect_equal(names(x), c("url", "song"))
  expect_false(any(grepl("letra", x$url)))
})

test_that("chords returned as expected", {
  expect_is(chords, "data.frame")
  expect_true(all(sapply(chords, is.character)))
  expect_equal(dim(chords), c(54, 4))
  expect_equal(names(chords), c("chord", "key", "song", "artist"))
})

test_that("chords_ngram returns as expected", {
  ngrams <- chords_ngram(chords)
  expect_equal(ngrams$chord[1], ngrams$chords_ngram[1])
  expect_equal(paste(ngrams$chord[1:2], collapse = " "), ngrams$chords_ngram[2])
})
