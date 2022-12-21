test_that(
  "The regression_model(x, y, z, 'with') can return summary of a logistic regression model with interaction terms.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    intervention = read.table(file.path("interventions.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    m = regression_model(re, eg, intervention, "with")
    expect_true(!is.na(m[1]))
  }

)

test_that(
  "The regression_model(x, y, z, 'without') can return summary of a logistic regression model without interaction terms.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    intervention = read.table(file.path("interventions.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    m = regression_model(re, eg, intervention, "without")
    expect_true(!is.na(m)[1])
  }

)
