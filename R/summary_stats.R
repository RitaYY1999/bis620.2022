#' @title summary_stats
#' @description This function creates the summary of statistics of the affected_rate with respect to each feature.
#' @param x a dataframe with all the studies and their values of our specified feature and affected_rate
#' @return a tibble of the count, mean and standard deviation of different groups in our specified feature.
#' @importFrom dplyr group_by summarize
#' @export
summary_stats <- function(x) {
  if (colnames(x)[3] == 'health'){
    sum <- group_by(x, health) |>
      summarise(
        count = n(),
        mean = mean(affected_rate),
        sd = sd(affected_rate)
      )}
  if (colnames(x)[3] == 'age'){
    sum <- group_by(x, age) |>
      summarise(
        count = n(),
        mean = mean(affected_rate),
        sd = sd(affected_rate)
      )}
  if (colnames(x)[3] == 'intervention_type'){
    sum <- group_by(x, intervention_type) |>
      summarise(
        count = n(),
        mean = mean(affected_rate),
        sd = sd(affected_rate)
      )}
  if (colnames(x)[3] == 'gender'){
    sum <- group_by(x, gender) |>
      summarise(
        count = n(),
        mean = mean(affected_rate),
        sd = sd(affected_rate)
        )}
  sum
}

#' @export
