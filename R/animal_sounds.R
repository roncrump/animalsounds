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
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, "!")
}
