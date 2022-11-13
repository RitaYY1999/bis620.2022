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
