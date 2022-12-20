test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different health groups.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    eg = tbl(con, "eligibilities")
    df_re = event_preprocess(re)
    health_condition = as.data.frame(eg) |> select(nct_id, healthy_volunteers)|>
      mutate(health = case_when(healthy_volunteers == "No" ~ "No",healthy_volunteers == "Accepts Healthy Volunteers" ~ "Yes",TRUE ~ "Unknown")) |> filter(healthy_volunteers != "Unknown")
    health_event = df_re |>
      inner_join(health_condition, by = "nct_id") |>select(nct_id, affected_rate, health)
    health_event$health <- as.factor(health_event$health)
    s <- summary_stats(health_event)
    expect_snapshot(s)
  }

)

test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different age groups.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    eg = tbl(con, "eligibilities")
    df_re = event_preprocess(re)
    age_type = as.data.frame(eg) |> mutate(age = case_when(older_adult == TRUE & child == FALSE & adult == FALSE ~ "older_adult",
                                                           older_adult == FALSE & child == TRUE & adult == FALSE ~ "child",
                                                           older_adult == FALSE & child == FALSE & adult == TRUE ~ "adult",
                                                           TRUE ~ "other"))|>
      select(nct_id, age)
    age_event = df_re |>
      inner_join(age_type, by = "nct_id") |>
      select(nct_id, affected_rate, age) |>
      filter(age != "other")
    age_event$age <- as.factor(age_event$age)
    s <- summary_stats(age_event)
    expect_snapshot(s)
  }

)

test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different intervention type groups.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    intervention = tbl(con, "interventions")
    df_re = event_preprocess(re)
    intervention <- as.data.frame(intervention)
    event_intervention = df_re |>
      inner_join(intervention, by = "nct_id") |>
      select(nct_id, affected_rate, intervention_type)
    event_intervention$intervention_type <- as.factor(event_intervention$intervention_type)
    s <- summary_stats(event_intervention)
    expect_snapshot(s)
  }

)

test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different gender groups.",
  {
    con = dbConnect(duckdb(file.path("/Users/ritay/Desktop/BIS620/bis620.2022/vignettes/ctrialsgovdb/ctrialsgov.duckdb")))
    re = tbl(con, "reported_event_totals")
    eg = tbl(con, "eligibilities")
    df_re = event_preprocess(re)
    e_gender <- as.data.frame(eg) |>
      filter(gender != "All")
    event_gender = df_re |>
      inner_join(e_gender, by = "nct_id") |>
      select(nct_id, affected_rate, gender) |>
      filter(!is.na(gender))
    event_gender$gender <- as.factor(event_gender$gender)
    s <- summary_stats(event_gender)
    expect_snapshot(s)
  }

)
