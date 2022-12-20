#' @title event_preprocess
#' @description This function conducts the data-preprocessing for our
#' target variable: reported events.
#' After converting the input table into a data frame,
#' it drops all rows that has at least one NA for either subjects_affected
#' or subjects_at_risk.
#' It then sum ups all the subjects_affected and subjects_at_risks
#' across all groups for each study.
#' It then adds a new column named "affected_rate" by
#' subjects_affected/subjects_at_risk, which is the target variable
#' Finally, it filters out all the abnormal values of affected_rates and
#' returns a clean data frame as desired.
#' @param x a table that contains all the data of the total reported events
#' @return a data frame with columns of nct_id, subjects_affected,
#' subjects_at_risk, affected_rate
#' @importFrom dplyr filter
#' @export
event_preprocess <- function(x) {
  re <- as.data.frame(x)
  re <- re[is.na(re$subjects_affected) == FALSE, ]
  re <- re[is.na(re$subjects_at_risk) == FALSE, ]

  re_1 <- aggregate(x = re$subjects_affected,
                    by = list(re$nct_id),
                    FUN = sum)
  colnames(re_1) <- c("nct_id", "subjects_affected")

  re_2 <- aggregate(x = re$subjects_at_risk,
                    by = list(re$nct_id),
                    FUN = sum)
  colnames(re_2) <- c("nct_id", "subjects_at_risk")

  re <- merge(re_1, re_2, by = "nct_id")

  re$affected_rate <- re$subjects_affected / re$subjects_at_risk

  re <- re |>
    filter(affected_rate <= 1 & affected_rate >= 0)
  re
}

#' @export
