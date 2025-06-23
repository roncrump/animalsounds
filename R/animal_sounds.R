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
animal_sounds <- function(animal, sound) {
  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.")
    )
  }
  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.")
    )
  }
  paste0("The ", animal, " goes ", sound, "!")
}
