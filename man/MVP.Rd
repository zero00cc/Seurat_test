% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing5.R
\name{MVP}
\alias{MVP}
\title{Find variable features based on mean.var.plot}
\usage{
MVP(
  data,
  verbose = TRUE,
  nselect = 2000L,
  mean.cutoff = c(0.1, 8),
  dispersion.cutoff = c(1, Inf),
  ...
)
}
\arguments{
\item{data}{Data matrix}

\item{verbose}{Whether to print messages and progress bars}

\item{nselect}{Number of features to select based on dispersion values}

\item{mean.cutoff}{Numeric of length two specifying the min and max values}

\item{dispersion.cutoff}{Numeric of length two specifying the min and max values}
}
\description{
Find variable features based on mean.var.plot
}
\keyword{internal}
