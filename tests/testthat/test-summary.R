test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different health groups.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    df_re = event_preprocess(re)
    health_condition = as.data.frame(eg) |> select(nct_id, healthy_volunteers)|>
      mutate(health = case_when(healthy_volunteers == "No" ~ "No",healthy_volunteers == "Accepts Healthy Volunteers" ~ "Yes",TRUE ~ "Unknown")) |> filter(healthy_volunteers != "Unknown")
    health_event = df_re |>
      inner_join(health_condition, by = "nct_id") |>select(nct_id, affected_rate, health)
    health_event$health <- as.factor(health_event$health)
    s <- summary_stats(health_event)
    expect_s3_class(s, "tbl_df")
  }

)

test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different age groups.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    df_re = event_preprocess(re)
    age_type = as.data.frame(eg) |> mutate(age = case_when(older_adult == "t" & child == "f" & adult == "f" ~ "older_adult",
                                                           older_adult == "f" & child == "t" & adult == "f" ~ "child",
                                                           older_adult == "f" & child == "f" & adult == "t" ~ "adult",
                                                           TRUE ~ "other"))|>
      select(nct_id, age)
    age_event = df_re |>
      inner_join(age_type, by = "nct_id") |>
      select(nct_id, affected_rate, age) |>
      filter(age != "other")
    age_event$age <- as.factor(age_event$age)
    s <- summary_stats(age_event)
    expect_s3_class(s, "tbl_df")
  }

)

test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different intervention type groups.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    intervention = read.table(file.path("interventions.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    df_re = event_preprocess(re)
    intervention <- as.data.frame(intervention)
    event_intervention = df_re |>
      inner_join(intervention, by = "nct_id") |>
      select(nct_id, affected_rate, intervention_type)
    event_intervention$intervention_type <- as.factor(event_intervention$intervention_type)
    s <- summary_stats(event_intervention)
    expect_s3_class(s, "tbl_df")
  }

)

test_that(
  "The summary_stats() returns a tibble of the count, mean and standard deviation of different gender groups.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    df_re = event_preprocess(re)
    e_gender <- as.data.frame(eg) |>
      filter(gender != "All")
    event_gender = df_re |>
      inner_join(e_gender, by = "nct_id") |>
      select(nct_id, affected_rate, gender) |>
      filter(!is.na(gender))
    event_gender$gender <- as.factor(event_gender$gender)
    s <- summary_stats(event_gender)
    expect_s3_class(s, "tbl_df")
  }

)
