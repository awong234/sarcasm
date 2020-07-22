context("Test sarcasm function")

test_case = function(text) {
    # browser()
    split = strsplit(text, '')
    lowercase = lapply(split, FUN = function(x) x %in% letters)
    uppercase = lapply(split, FUN = function(x) x %in% LETTERS)
    out = list()
    for (t in text) {
        out[[t]] = vector(mode = 'character', length = nchar(t))
    }
    out = Map(f = function(lower, upper, result) {
        result[lower] = 'l'
        result[upper] = 'u'
        return(result)
    }, lower = lowercase, upper = uppercase, result = out)
    # browser()
    return(out)
}

text = 'Pythonistas'
text_2 = c('Pythonistas', "R_users")

test_that("Return is as expected", {
    set.seed(1)
    result = sarcasm(text)
    expect_equal(test_case(result), list(c("l", "l", "u", "u", "l", "u", "u", "u", "u", "l", "l")))
})

test_that("Infix works as well", {
    set.seed(1)
    result = text %>% `/s`
    expect_equal(test_case(result), list(c("l", "l", "u", "u", "l", "u", "u", "u", "u", "l", "l")))
})
