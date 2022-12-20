#' @title mean_plot
#' @description This function generates a mean plot for our selected feature.
#' @param df a dataframe with all the studies and their values of our specified
#' feature and affected_rate
#' @return a mean plot indicating the patterns of our selected feature
#' @import ggpubr
#' @export
mean_plot <- function(df) {
  if (colnames(df)[3] == "health") {
    lab <- "Health"
    }
  if (colnames(df)[3] == "age") {
    lab <- "Age"
    }
  if (colnames(df)[3] == "intervention_type") {
    lab <- "Intervention Type"
    }
  if (colnames(df)[3] == "gender") {
    lab <- "Gender"
    }
  mplot <- ggline(df, x = colnames(df)[3], y = "affected_rate",
         add = c("mean_se", "jitter"),
         ylab = "Affected Rate", xlab = lab) + rotate_x_text(30)
  mplot
}

#' @export
