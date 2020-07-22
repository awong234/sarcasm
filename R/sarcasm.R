#' Randomly select \code{toupper} or \code{tolower}
#' @return A function, either the definition of \code{toupper} or \code{tolower}
randcase = function() {
    upper = as.logical(rbinom(n = 1, size = 1, prob = 0.5))
    if (upper) {
        toupper
    } else {
        tolower
    }
}

#' Generate sarcastic version of text input
#'
#' @param text A character vector, of length >= 1
#' @return A character vector of length equal to \code{text}.
#' @export
sarcastic = function(text) {
    letters = strsplit(text, split = '')
    lEtTeRs = lapply(letters, FUN = function(each_vec_element){
        vec = lapply(each_vec_element, function(each_letter) {
            return(randcase()(each_letter))
        })
        return(paste0(vec, collapse = ''))
    })
    if (length(lEtTeRs) == 1) {
        return(lEtTeRs[[1]])
    } else {
        return(as.character(lEtTeRs))
    }
    return(lEtTeRs)
}

#' Shorthand version of function sarcasm
#' @inheritParams sarcastic
#' @export
`/s` = sarcastic