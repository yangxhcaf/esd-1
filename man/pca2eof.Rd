% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pca2eof.R
\name{pca2eof}
\alias{pca2eof}
\title{Transform \code{pca} to \code{eof}}
\usage{
pca2eof(x, verbose = FALSE)
}
\arguments{
\item{x}{a 'pca' object (see \code{link{PCA}})}

\item{verbose}{a boolean; if FALSE do not print information about progress (silent mode)}
}
\value{
an 'eof' object (see \code{link{EOF}})
}
\description{
\code{pca2eof} uses gridding (\code{\link{gridstation}}) to transform the
station map into a regular map making use of elevation.
}
\seealso{
gridstation
}
