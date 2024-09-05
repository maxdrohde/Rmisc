#' Short command to create a styled ggplot histogram from a vector
#'
#' @param folder_name Which directory (relative to current directory) contains the CSV files?
#' @param output_filename How should the output file be named?
#'
#' @return None
#' @export

merge_csv <- function(
                   folder_name,
                   output_filename = "results.csv"
                   ){

  cat(glue::glue("Reading CSV files in {folder_name}"))
  paths <- fs::dir_ls(path = glue::glue("./{folder_name}"),
                      glob = "*.csv")
  cat(glue::glue("{length(paths)} CSV files were found"))

  df <-
    purrr::map(paths,
               ~data.table::fread(.x),
               .progress = TRUE) |>
    data.table::rbindlist()

  readr::write_csv(df,
                   file = output_filename)

  cat(glue::glue("Output file written to {output_filename}"))
}
