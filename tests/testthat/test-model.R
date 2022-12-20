test_that(
  "The regression_model(x, y, z, 'with') can return summary of a logistic regression model with interaction terms.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    intervention = tbl(con, "interventions")
    eg = tbl(con, "eligibilities")
    m = regression_model(re, eg, intervention, "with")
    expect_snapshot(m)
  }

)

test_that(
  "The regression_model(x, y, z, 'without') can return summary of a logistic regression model without interaction terms.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    intervention = tbl(con, "interventions")
    eg = tbl(con, "eligibilities")
    m = regression_model(re, eg, intervention, "without")
    expect_snapshot(m)
  }

)
