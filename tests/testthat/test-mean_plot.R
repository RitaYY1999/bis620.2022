
test_that(
  "The mean_plot() returns a mean plot of adverse event affected rates for health conditions.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    eg = read.table(file.path("eligibilities.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    df_re = event_preprocess(re)
    health_condition = as.data.frame(eg) |> select(nct_id, healthy_volunteers)|>
      mutate(health = case_when(healthy_volunteers == "No" ~ "No",healthy_volunteers == "Accepts Healthy Volunteers" ~ "Yes",TRUE ~ "Unknown")) |> filter(healthy_volunteers != "Unknown")
    health_event = df_re |>
      inner_join(health_condition, by = "nct_id") |>select(nct_id, affected_rate, health)
    health_event$health <- as.factor(health_event$health)
    p<-mean_plot(health_event)
    vdiffr:: expect_doppelganger("health-mean-plot", p)
  }

)

test_that(
  "The mean_plot() returns a mean plot of adverse event affected rates for age factor.",
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
    p<-mean_plot(age_event)
    vdiffr:: expect_doppelganger("age-mean-plot", p)
  }

)

test_that(
  "The mean_plot() returns a box plot of adverse event affected rates for intervention type factor.",
  {
    re = read.table(file.path("reported_event_totals.txt"), sep="|", quote="", comment.char="", header = TRUE)
    intervention = read.table(file.path("interventions.txt"), sep="|", quote="", comment.char="", fill = TRUE, header = TRUE)
    df_re = event_preprocess(re)
    intervention <- as.data.frame(intervention)
    event_intervention = df_re |>
      inner_join(intervention, by = "nct_id") |>
      select(nct_id, affected_rate, intervention_type)
    event_intervention$intervention_type <- as.factor(event_intervention$intervention_type)
    p<-mean_plot(event_intervention)
    vdiffr:: expect_doppelganger("intervention-mean-plot", p)
  }

)

test_that(
  "The mean_plot() returns a mean plot of adverse event affected rates for gender factor.",
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
    p<-mean_plot(event_gender)
    vdiffr:: expect_doppelganger("gender-mean-plot", p)
  }

)
