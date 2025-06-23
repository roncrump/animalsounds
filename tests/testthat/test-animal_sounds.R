test_that("animal_sounds works", {
  dog_woof <- animal_sounds('dog','woof')
  expect_equal(dog_woof, 'The dog goes woof!')
  expect_equal(animal_sounds('cat','miaow'), 'The cat goes miaow!')
  giraffe <- animal_sounds("giraffe")
  expect_equal(giraffe,
               "The giraffe makes no sound.")
})
test_that("handles invalid inputs",{
  expect_error(animal_sounds('dog',c('woof','bow wow wow')),
               class = 'error_single_string_expected')
  dog_factor <- factor('dog')
  expect_error(animal_sounds(dog_factor, c('woof','bow wow wow')),
               class = 'error_single_string_expected')
  woof_factor <- factor('woof')
  expect_error(animal_sounds('dog', woof_factor),
               class = 'error_single_string_expected')
})
