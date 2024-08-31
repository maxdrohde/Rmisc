#' Save a ggplot with my preferred dimensions and setting for Beamer
#'
#' @param ggplot_object A ggplot
#' @param filename Name of file to output. The ".png" is added automatically
#'
#' @return Nothing
#' @export
ggsave_beamer <-
  function(ggplot_object,
           filename,
           bg = "white",
           device = ragg::agg_png,
           units = "in",
           height = 9,
           width = 16,
           dpi = 500,
           ...) {
    ggplot2::ggsave(
      ggplot_object,
      filename = glue::glue("{filename}.png"),
      bg = bg,
      device = device,
      units = units,
      height = height,
      width = width,
      dpi = dpi, ...)
  }
