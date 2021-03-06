% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contract_phenocam.r
\name{contract_phenocam}
\alias{contract_phenocam}
\title{Contracts the file from 1-day to a 3-day time step}
\usage{
contract_phenocam(
  data,
  internal = TRUE,
  no_padding = FALSE,
  out_dir = tempdir()
)
}
\arguments{
\item{data}{a phenocam data file with a 1 or 3 day time step}

\item{internal}{return a data structure if given a file on disk
(\code{TRUE} / \code{FALSE} = default)}

\item{no_padding}{allow for padding to REMAIN or not
(\code{TRUE} / \code{FALSE} = default)}

\item{out_dir}{output directory where to store data (default = tempdir())}
}
\value{
A contracted PhenoCam 3-day time series to its original 3-day time
step (if provided at a 1-day interval), also removes padding introduced
by processing for 1-day data.
}
\description{
Reverts the `expand_phenocam()` function in order
to save space and generate files as outlined in
the cited data paper. This routine is used as a 
post-production measure.
}
\examples{

\dontrun{
# download demo data
download_phenocam(site = "harvard$",
                  veg_type = "DB",
                  roi_id = "1000",
                  frequency = "3")

# Overwrites the original file, increasing
# it's file size.
expand_phenocam(file.path(tempdir(),"harvard_DB_1000_3day.csv"))

# Contracts the file to it's original size, skipping
# two days.
contract_phenocam(file.path(tempdir(),"harvard_DB_1000_3day.csv"))
}
}
