#' Assign all columns in a 1-row data.frame to a global variable for use in simulations
#'
#' @param df A one-row data frame object
#'
#' @return Nothing
#' @export
assign_variables <- function(df) {

  if (nrow(df) != 1) {
    stop("The data frame must have exactly one row.")
  }

  for (name in colnames(df)) {
    assign(name, df[[name]], envir = .GlobalEnv)
  }
}

