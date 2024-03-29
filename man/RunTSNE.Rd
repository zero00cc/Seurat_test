% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/dimensional_reduction.R
\name{RunTSNE}
\alias{RunTSNE}
\alias{RunTSNE.matrix}
\alias{RunTSNE.DimReduc}
\alias{RunTSNE.dist}
\alias{RunTSNE.Seurat}
\title{Run t-distributed Stochastic Neighbor Embedding}
\usage{
RunTSNE(object, ...)

\method{RunTSNE}{matrix}(
  object,
  assay = NULL,
  seed.use = 1,
  tsne.method = "Rtsne",
  dim.embed = 2,
  reduction.key = "tSNE_",
  ...
)

\method{RunTSNE}{DimReduc}(
  object,
  cells = NULL,
  dims = 1:5,
  seed.use = 1,
  tsne.method = "Rtsne",
  dim.embed = 2,
  reduction.key = "tSNE_",
  ...
)

\method{RunTSNE}{dist}(
  object,
  assay = NULL,
  seed.use = 1,
  tsne.method = "Rtsne",
  dim.embed = 2,
  reduction.key = "tSNE_",
  ...
)

\method{RunTSNE}{Seurat}(
  object,
  reduction = "pca",
  cells = NULL,
  dims = 1:5,
  features = NULL,
  seed.use = 1,
  tsne.method = "Rtsne",
  dim.embed = 2,
  distance.matrix = NULL,
  reduction.name = "tsne",
  reduction.key = "tSNE_",
  ...
)
}
\arguments{
\item{object}{Seurat object}

\item{...}{Arguments passed to other methods and to t-SNE call (most commonly used is perplexity)}

\item{assay}{Name of assay that that t-SNE is being run on}

\item{seed.use}{Random seed for the t-SNE. If NULL, does not set the seed}

\item{tsne.method}{Select the method to use to compute the tSNE. Available
methods are:
\itemize{
  \item \dQuote{\code{Rtsne}}: Use the Rtsne package Barnes-Hut
    implementation of tSNE (default)
  \item \dQuote{\code{FIt-SNE}}: Use the FFT-accelerated Interpolation-based
    t-SNE. Based on Kluger Lab code found here:
    \url{https://github.com/KlugerLab/FIt-SNE}
}}

\item{dim.embed}{The dimensional space of the resulting tSNE embedding
(default is 2). For example, set to 3 for a 3d tSNE}

\item{reduction.key}{dimensional reduction key, specifies the string before
the number for the dimension names. \dQuote{\code{tSNE_}} by default}

\item{cells}{Which cells to analyze (default, all cells)}

\item{dims}{Which dimensions to use as input features}

\item{reduction}{Which dimensional reduction (e.g. PCA, ICA) to use for
the tSNE. Default is PCA}

\item{features}{If set, run the tSNE on this subset of features
(instead of running on a set of reduced dimensions). Not set (NULL) by default;
\code{dims} must be NULL to run on features}

\item{distance.matrix}{If set, runs tSNE on the given distance matrix
instead of data matrix (experimental)}

\item{reduction.name}{dimensional reduction name, specifies the position in the object$dr list. tsne by default}
}
\description{
Run t-SNE dimensionality reduction on selected features. Has the option of
running in a reduced dimensional space (i.e. spectral tSNE, recommended),
or running based on a set of genes. For details about stored TSNE calculation
parameters, see \code{PrintTSNEParams}.
}
\concept{dimensional_reduction}
