% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggsave_beamer.R
\name{ggsave_beamer}
\alias{ggsave_beamer}
\title{Save a ggplot with my preferred dimensions and setting for Beamer}
\usage{
ggsave_beamer(
  ggplot_object,
  filename,
  bg = "white",
  device = ragg::agg_png,
  units = "in",
  height = 9,
  width = 16,
  dpi = 500,
  ...
)
}
\arguments{
\item{ggplot_object}{A ggplot}

\item{filename}{Name of file to output. The ".png" is added automatically}
}
\value{
Nothing
}
\description{
Save a ggplot with my preferred dimensions and setting for Beamer
}
