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




