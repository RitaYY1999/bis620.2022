test_that(
  "The hello() returns Hello! for empty input.",
  {
    expect_equal(hello(), "Hello!")
  }
)

test_that(
  "The hello() returns Hello name ! for input = name.",
  {
    expect_equal(hello("World"), "Hello World!")
  }
)

test_that(
  "The hello(name, invisible=TRUE) returns a invisible object.",
  {
    expect_invisible(hello("World", invisible = TRUE))
  }
)
