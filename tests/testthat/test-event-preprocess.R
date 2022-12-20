test_that(
  "The event_preprocess() returns a joint data frame with calculated adverse event affected rate.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    expect_s3_class(event_preprocess(re), "data.frame")
  }
)
