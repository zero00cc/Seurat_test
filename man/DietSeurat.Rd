% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/objects.R
\name{DietSeurat}
\alias{DietSeurat}
\title{Slim down a Seurat object}
\usage{
DietSeurat(
  object,
  layers = NULL,
  features = NULL,
  assays = NULL,
  dimreducs = NULL,
  graphs = NULL,
  misc = TRUE,
  counts = deprecated(),
  data = deprecated(),
  scale.data = deprecated(),
  ...
)
}
\arguments{
\item{object}{A \code{\link[SeuratObject]{Seurat}} object}

\item{layers}{A vector or named list of layers to keep}

\item{features}{Only keep a subset of features, defaults to all features}

\item{assays}{Only keep a subset of assays specified here}

\item{dimreducs}{Only keep a subset of DimReducs specified here (if
\code{NULL}, remove all DimReducs)}

\item{graphs}{Only keep a subset of Graphs specified here (if \code{NULL},
remove all Graphs)}

\item{misc}{Preserve the \code{misc} slot; default is \code{TRUE}}

\item{counts}{Preserve the count matrices for the assays specified}

\item{data}{Preserve the data matrices for the assays specified}

\item{scale.data}{Preserve the scale data matrices for the assays specified}

\item{...}{Ignored}
}
\value{
\code{object} with only the sub-object specified retained
}
\description{
Keep only certain aspects of the Seurat object. Can be useful in functions
that utilize merge as it reduces the amount of data in the merge
}
\concept{objects}
