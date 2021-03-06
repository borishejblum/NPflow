% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{mmvtpdfC}
\alias{mmvtpdfC}
\title{C++ implementation of multivariate Normal probability density function for multiple inputs}
\usage{
mmvtpdfC(x, mean, varcovM, df, Log = TRUE)
}
\arguments{
\item{x}{data matrix of dimension \code{p x n}, \code{p} being the dimension of the
data and n the number of data points.}

\item{mean}{mean vectors matrix of dimension \code{p x K}, \code{K} being the number of
distributions for which the density probability has to be evaluated.}

\item{varcovM}{list of length \code{K} of variance-covariance matrices,
each of dimensions \code{p x p}.}

\item{df}{vector of length \code{K} of degree of freedom parameters.}

\item{Log}{logical flag for returning the log of the probability density
function. Defaults is \code{TRUE}.}
}
\value{
matrix of densities of dimension \code{K x n}.
}
\description{
C++ implementation of multivariate Normal probability density function for multiple inputs
}
\examples{
mvnpdf(x=matrix(1.96), mean=0, varcovM=diag(1), Log=FALSE)
mvtpdf(x=matrix(1.96), mean=0, varcovM=diag(1), df=10000000, Log=FALSE)
mmvtpdfC(x=matrix(1.96), mean=matrix(0), varcovM=list(diag(1)), df=10000000, Log=FALSE)

mvnpdf(x=matrix(1.96), mean=0, varcovM=diag(1))
mvtpdf(x=matrix(1.96), mean=0, varcovM=diag(1), df=10000000)
mmvtpdfC(x=matrix(1.96), mean=matrix(0), varcovM=list(diag(1)), df=10000000)

mvtpdf(x=matrix(1.96), mean=0, varcovM=diag(1), df=10)
mmvtpdfC(x=matrix(1.96), mean=matrix(0), varcovM=list(diag(1)), df=10)


if(require(microbenchmark)){
library(microbenchmark)
microbenchmark(mvtpdf(x=matrix(1.96), mean=0, varcovM=diag(1), df=1, Log=FALSE),
               mmvtpdfC(x=matrix(1.96), mean=matrix(0), varcovM=list(diag(1)),
                        df=c(1), Log=FALSE),
               times=10000L)
}else{
cat("package 'microbenchmark' not available\n")
}
}
\author{
Boris Hejblum
}
