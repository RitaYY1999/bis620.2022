test_that(
  "The event_preprocess() returns a joint data frame with calculated adverse event affected rate.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    expect_s3_class(event_preprocess(re), "data.frame")
  }
)
