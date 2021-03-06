% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{FmeasureC}
\alias{FmeasureC}
\title{C++ implementation of the F-measure computation}
\usage{
FmeasureC(pred, ref)
}
\arguments{
\item{pred}{vector of a predicted partition}

\item{ref}{vector of a reference partition}
}
\description{
C++ implementation of the F-measure computation
}
\examples{
pred <- c(1,1,2,3,2,3)
ref <- c(2,2,1,1,1,3)
FmeasureC(pred, ref)

}
