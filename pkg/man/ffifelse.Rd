% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ffifelse.R
\name{ffifelse}
\alias{ffifelse}
\title{Conditional Element Selection for \code{ff} vectors.}
\usage{
ffifelse(test, yes, no)
}
\arguments{
\item{test}{logical or boolean \code{ff} vector}

\item{yes}{an \code{ff} vector with return values for true elements of test. If too short, their elements are recycled.}

\item{no}{an \code{ff} vector with return values for false elements of test. If too short, their elements are recycled.}
}
\value{
An ff vector of the same length as \code{test}.
}
\description{
Similar as \code{ifelse} in the base package but only works with yes and no as \code{ff} vectors.
}
\examples{
data(iris)
ffiris <- as.ffdf(iris)
ffifelse(ffiris$Sepal.Length < 5, TRUE, NA)
ffifelse(ffiris$Sepal.Length < 5, factor(rep("abc", nrow(ffiris))), NA)
ffifelse(ffiris$Sepal.Length < 5, Sys.Date(), factor("abc"))
ffifelse( ffiris$Sepal.Length < 5, Sys.Date(), ff(seq.Date( Sys.Date()+1
        , Sys.Date()+nrow(ffiris), by = "day")))


}
\seealso{
\code{\link[base]{ifelse}}
}

