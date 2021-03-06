% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/desparsify.R
\name{desparsify}
\alias{desparsify}
\title{De-Sparsified Graphical Lasso Estimator}
\usage{
desparsify(object, ...)
}
\arguments{
\item{object}{An object of class \code{ggmncv}}

\item{...}{Currently ignored}
}
\value{
The de-sparsified estimates, including

\itemize{

\item \code{Theta}:  De-sparsified precision matrix

\item \code{P}:  De-sparsified partial correlation matrix

}
}
\description{
\loadmathjax
Compute the de-sparsified glasso estimator with the approach
described in Equation 7 of \insertCite{jankova2015confidence;textual}{GGMncv}.
}
\details{
According to \insertCite{jankova2015confidence;textual}{GGMncv}, the de-sparisifed estimator,
\mjseqn{\hat{\mathrm{\bf T}}}, is defined as

\mjseqn{\hat{\mathrm{\bf T}} = 2\hat{\boldsymbol{\Theta}} - \hat{\boldsymbol{\Theta}}\hat{\mathrm{\bf R}}\hat{\boldsymbol{\Theta}},}

where \mjseqn{\hat{\boldsymbol{\Theta}}} denotes the graphical lasso estimator of the precision matrix
and \mjseqn{\hat{\mathrm{\bf R}}} is the sample correlation matrix. Further details can be
found in section 2 ("Main Results") of \insertCite{jankova2015confidence;textual}{GGMncv}.
}
\note{
This assumes (reasonably) Gaussian data.
}
\examples{
# data
Y <- GGMncv::Sachs

# fit model
fit <- ggmncv(cor(Y), n = nrow(Y))

# remove (some) bias and sparsity
That <- desparsify(fit)

# de-sparsified partial correlations
That$P
}
\references{
\insertAllCited{}
}
