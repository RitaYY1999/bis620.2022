#' Get the specific details of how are the health condition, intervention type,
#' gender and age factors related to adverse events.
#'
#' The adverse rate is calculated by dividing the number of adverse event
#' affected people by the number of people at risk of adverse event.
#' An adverse event is considered serious if the adverse rate is more than 10%.
#' Why choose 10%?
#' https://www.ncbi.nlm.nih.gov/books/NBK558963/#:~:text=Adverse%20events%20(AE)%20frequently%20occur%20in%20any%20medical%20system%2C,in%20ten%20patients%20are%20affected.
#' @param x an object inherited from a table with columns `subjects_affected`,
#' `subjects_at_risk`, `nct_id`
#' @param y an object inherited from a table with columns `nct_id`, `gender`,
#' `healthy volunteers`, `adult`, `child`, `older_adult`
#' @param z an object inherited from a table with columns `nct_id`,
#' `intervention_type`
#' @param type the type of regression model (containing two types: `without` model without interactions & `with` model with interactions)
#' @return regression model summary of the relative significance of factors to adverse event.
#' @import DBI duckdb dplyr dbplyr
#' @export

regression_model <- function(x, y, z, type){
  x <- as.data.frame(x)
  x <- x[is.na(x$subjects_affected) == FALSE,]
  x <- x[is.na(x$subjects_at_risk) == FALSE,]

  x_1 <- aggregate(x = x$subjects_affected,
                    by = list(x$nct_id),
                    FUN = sum)
  colnames(x_1) <- c("nct_id", "subjects_affected")

  x_2 <- aggregate(x = x$subjects_at_risk,
                    by = list(x$nct_id),
                    FUN = sum)
  colnames(x_2) <- c("nct_id", "subjects_at_risk")

  x <- merge(x_1, x_2, by = "nct_id")

  x$affected_rate <- x$subjects_affected / x$subjects_at_risk

  x <- x |>
    filter(affected_rate <= 1 & affected_rate >= 0)

  # age v.s. event
  age_type = as.data.frame(y) |> mutate(age = case_when(older_adult == "t" & child == "f" & adult == "f" ~ "older_adult",
                                                         older_adult == "f" & child == "t" & adult == "f" ~ "child",
                                                         older_adult == "f" & child == "f" & adult == "t" ~ "adult",
                                                         TRUE ~ "other"))|>
    select(nct_id, age)

  age_event = x |>
    inner_join(age_type, by = "nct_id") |>
    select(nct_id, affected_rate, age) |>
    filter(age != "other")

  age_event$age <- as.factor(age_event$age)

  # gender v.s. event
  y <- as.data.frame(y) |>
    filter(gender != "All")

  gender_event = x |>
    inner_join(y, by = "nct_id") |>
    select(nct_id, affected_rate, gender) |>
    filter(!is.na(gender))

  gender_event$gender <- as.factor(gender_event$gender)

  # health v.s. event
  y = as.data.frame(y)
  health_condition = y |>
    select(nct_id, healthy_volunteers)|>
    mutate(health = case_when(
      healthy_volunteers == "No" ~ "No",
      healthy_volunteers == "Accepts Healthy Volunteers" ~ "Yes",
      TRUE ~ "Unknown")) |>
    filter(healthy_volunteers != "Unknown")

  health_event = x |>
    inner_join(health_condition, by = "nct_id") |>
    select(nct_id, affected_rate, health)

  health_event$health <- as.factor(health_event$health)

  # intervention v.s. event
  z <- as.data.frame(z)

  intervention_event = x |>
    inner_join(z, by = "nct_id") |>
    select(nct_id, affected_rate, intervention_type)

  intervention_event$intervention_type <- as.factor(intervention_event$intervention_type)


  # merge all the data into a neat data frame
  df <- health_event |>
    merge(intervention_event, by = c("nct_id", "affected_rate")) |>
    merge(gender_event, by = c("nct_id", "affected_rate")) |>
    merge(age_event, by = c("nct_id", "affected_rate"))

  df <- df[!duplicated(df), ]


  df$adverse_status = df$affected_rate > 0.1

  df$adverse_status <- as.factor(df$adverse_status)

  if (type == "without"){
    model_simple <- glm(adverse_status ~ health + intervention_type + gender + age, data = df, family = "binomial")
    summary(model_simple)
  }

  else {
    model_inter <- glm(adverse_status ~ health*intervention_type*gender*age, data = df, family = "binomial")
    summary(model_inter)
  }

}













