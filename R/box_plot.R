#' @title box_plot
#' @description This function generates a box plot for our selected feature.
#' @param df a dataframe with all the studies and their values of our
#' specified feature and affected_rate
#' @return a box plot indicating the patterns of our selected feature
#' @import ggpubr
#' @export
box_plot <- function(df) {
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
  bplot <- ggboxplot(df, x = colnames(df)[3], y = "affected_rate",
            color = colnames(df)[3],
            ylab = "Affected Rate", xlab = lab) + rotate_x_text(30)
  bplot
}

#' @export
