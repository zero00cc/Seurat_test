% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{GetResidual}
\alias{GetResidual}
\title{Calculate pearson residuals of features not in the scale.data}
\usage{
GetResidual(
  object,
  features,
  assay = NULL,
  umi.assay = "RNA",
  clip.range = NULL,
  replace.value = FALSE,
  na.rm = TRUE,
  verbose = TRUE
)
}
\arguments{
\item{object}{A seurat object}

\item{features}{Name of features to add into the scale.data}

\item{assay}{Name of the assay of the seurat object generated by SCTransform}

\item{umi.assay}{Name of the assay of the seurat object containing UMI matrix
and the default is RNA}

\item{clip.range}{Numeric of length two specifying the min and max values the
Pearson residual will be clipped to}

\item{replace.value}{Recalculate residuals for all features, even if they are
already present. Useful if you want to change the clip.range.}

\item{na.rm}{For features where there is no feature model stored, return NA
for residual value in scale.data when na.rm = FALSE. When na.rm is TRUE, only
return residuals for features with a model stored for all cells.}

\item{verbose}{Whether to print messages and progress bars}
}
\value{
Returns a Seurat object containing Pearson residuals of added
features in its scale.data
}
\description{
This function calls sctransform::get_residuals.
}
\examples{
\dontrun{
data("pbmc_small")
pbmc_small <- SCTransform(object = pbmc_small, variable.features.n = 20)
pbmc_small <- GetResidual(object = pbmc_small, features = c('MS4A1', 'TCL1A'))
}

}
\seealso{
\code{\link[sctransform]{get_residuals}}
}
\concept{preprocessing}
