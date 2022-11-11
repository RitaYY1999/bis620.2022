test_that(
  "The accel_plot() returns a ggplot object.",
  {
    data(ukb_accel)
    p <-  accel_plot(ukb_accel[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The accel_plot() errors when no time or freq column.",
  {
    data(iris)
    expect_error(accel_plot(iris))
  }
)

test_that(
  "The accel_plot() is correct for time-series data.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    expect_doppelganger("first-100-samples", p) # a svg comparison
  }
)

test_that(
  "The accel_plot() is correct for freq data.",
  {
    data(Titanic)
    tita <- data.frame(Titanic)
    colnames(tita)[5] <- "freq"
    t <- accel_plot(tita)
    expect_doppelganger("plot for Titanic data", t)
  }
)

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

test_that(
  "The spectral_signature() returns a data frame.",
  {
    data(ukb_accel)
    s <- spectral_signature(ukb_accel[1:100, ])
    expect_s3_class(s, "data.frame")
  }
)

test_that(
  "The spectral_signature(x, take_log = TRUE) takes
  the log of the modulus be taken.",
  {
    data(ukb_accel)
    s <- spectral_signature(ukb_accel[1:100, ], take_log = TRUE)
    n <- spectral_signature(ukb_accel[1:100, ])
    expect_equal(s[, 1:3], log(n)[, 1:3])
  }
)
