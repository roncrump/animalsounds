#' Tell us what sound an animal makes
#'
#' Print the sound that an animal makes in the console.
#'
#' This is an alias to [paste0()] but not to [DEoptimR::JDEoptim()] or [DE][DEoptimR::JDEoptim()]
#'
#' @param animal the name of an animal (a single character string)
#' @param sound the sound made by an animal (a single character string)
#'
#' @returns A string like this: "The \{animal\} goes \{sound\}!"
#' @export
#'
#' @examples
#' animal_sounds("peacock","BlEuRk")
animal_sounds <- function(animal, sound = NULL) {
  check_arg(animal)
  if (is.null(sound)) {
    return(paste0("The ", animal, " makes no sound."))
  }
  check_arg(sound)
  paste0("The ", animal, " goes ", sound, "!")
}

check_arg <- function(arg){
  if (!is.null(arg) & !rlang::is_character(arg, n = 1)) {
    cli::cli_abort(
      c("{.var arg} must be a single string!",
        "i" = "It was {.type {arg}} of length {length(arg)} instead."),
      class = 'error_single_string_expected'
    )
  }
}
