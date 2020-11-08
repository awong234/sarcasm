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
#' Produce a vectorized mockerized version of your input strings.
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
}

#' Shorthand version of function sarcasm
#'
#' Reddit-style sarcasm. Most useful after a pipe.
#' @usage text \%>\% `/s`
#' @param text A character vector, of length >= 1
#' @return A character vector of length equal to \code{text}.
#' @export
`/s` = sarcastic

#' Print error messages sarcastically
#'
#' Errors not snarky enough for you? Print them snarkily. Not recommended for
#' non-interactive use.
#' @param silent Boolean, prints reset instructions if TRUE
#' @return Nothing, used for its side effect in setting options for errors.
#' @export
sarcastic_errors = function(silent = FALSE) {
    sarc_err = function() {
        err = gsub(pattern = '\\n(?!.*\\n)', replacement = '', x = geterrmessage(), perl = TRUE)
        message(sarcastic(err))
    }
    options(show.error.messages = FALSE, error = sarc_err)
    if (! silent) {
        message("To reset, restart your R session, or run the following:")
        message("options(show.error.messages = TRUE, error = NULL)")
    }
}

#' Ridicule
#'
#' Draw from a sample of anti-praise templates
#' @return Ridicule, lowers self-esteem
#' @importFrom praise praise
ridicule = function(hurt = NULL, proc = 0.1) {
    hurt = as.character(hurt)
    n = 6
    if (is.null(hurt)) {
        hurt = as.character(sample(seq(0,5), size = 1, prob = c(1-proc, rep(proc/(n-1), (n-1)))))
    }
    switch(hurt,
           '0' = invisible(NULL),
           '1' = praise("${adjective}, your computer remarked, in annoyance."),
           '2' = sarcastic(praise("${adjective}.")),
           '3' = sarcastic(praise("That was ${adjective}.")),
           '4' = sarcastic(praise("${exclamation}${exclamation} that was ${adverb} ${adjective}.")),
           '5' = sarcastic(praise("${exclamation} ${exclamation} ${exclamation} you're a ${adjective} coder."))
           )
}

demoralizing_errors = function(silent = FALSE) {
    dem_error = function() {
        ridicule_proc = getOption('ridicule_probability')
        if (is.null(ridicule_proc)) ridicule_proc = 0.1
        err = gsub(pattern = '\\n(?!.*\\n)', replacement = '. ', x = geterrmessage(), perl = TRUE)
        message(err, appendLF = FALSE)
        message(ridicule(proc = ridicule_proc))
    }
    options(show.error.messages = FALSE, error = dem_error)
    if (! silent) {
        message("To reset, restart your R session, or run the following:")
        message("options(show.error.messages = TRUE, error = NULL)")
        if (! is.null(getOption('ridicule_probability'))) {
            message("Current ridicule probability set to ", getOption('ridicule_probability'))
        } else {
            message("Customize ridicule probability by setting 'ridicule_probability' option.")
        }
    }
}