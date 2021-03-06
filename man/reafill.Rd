% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reafill.R
\name{reafill}
\alias{reafill}
\alias{pcafill}
\alias{test.reafill}
\title{Fill in gaps of missing data.
\code{reafill} is an alternative to \code{pcafill}, using ERA5 to fill in missing data and to evaluate
the station data based on an ordinary linear regression between data from the
reanalysis interpolated to the coordinates of the station data.}
\usage{
reafill(x, file, anomaly = TRUE, verbose = FALSE, plot = FALSE, delta = 0.3)
}
\arguments{
\item{x}{the station data with gaps that need interpolation}

\item{file}{Name of the reanalysis data file (netCDF). NB use daily data if x contains daily data.}

\item{anomaly}{(Not yet working) subtract the mean annual cycle before interpolation and then add it back for recovering original form.}

\item{verbose}{Print out checks for diagnosing}

\item{plot}{Graphical diagnostics}
}
\description{
The reanalysis is usually more complete than the station data and the final result 
keeps the original data wherever valid and fills in the gaps and extends the coverage
with informatino from the reanalysis wherever appropriate. This function is an alternative
to \code{pcafill} and using DS to downscale local data. Whereas \code{pcafill} is more suited 
for aggregated (monthly/seasonal/annual) data for a group of stations within a region with common
variabiliet, the \code{reafill} function is more geared to daily data. \code{pcafill} does not make
use of additional infromation other than assuming a stable spatio-temporal covariance structure whereas
\code{reafill} makes use of addtional information from reanalyses.
}
\details{
\code{test.reafill} provides a testing routine for \code{reafill} on sample data 
(Oslo monthly temperature) where gaps of missing data have been introduced. The test 
consists of comparing with the data that has been removed before applying \code{reafill}.
}
\author{
R.E. Benestad
}
