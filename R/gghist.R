#' Short command to create a styled ggplot histogram from a vector
#'
#' @param x A vector of data
#' @param bins Number of histogram bins
#' @param xlab x-axis label. Uses the variable name by default.
#' @param title Plot title
#'
#' @return ggplot
#' @export

  gghist <- function(x,
                     bins = 100,
                     xlab = glue::glue("Variable: {deparse(substitute(x))}"),
                     title = ""){

  df <- data.frame(x)

  p <-
  df |>
  ggplot2::ggplot() +
  ggplot2::aes(x=x) +
  ggplot2::geom_histogram(color = "black", fill = "#EEEEEE", bins = bins) +
  ggplot2::labs(x = xlab, y = "Count", title = title)

  return(p)
}
