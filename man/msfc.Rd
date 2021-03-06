% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msfc.R
\name{msfc}
\alias{msfc}
\title{Maximum Smoothness Forward Curve (MSFC)}
\usage{
msfc(tdate, include, contract, sdate, edate, f, prior = 0)
}
\arguments{
\item{tdate}{trading date}

\item{include}{logical vector to determine if contracts should be included in calculation}

\item{contract}{vector with contract names}

\item{sdate}{date vector with contract delivery start dates}

\item{edate}{date vector with contract delivery end dates}

\item{f}{numeric vector with futures contract prices}

\item{prior}{numeric vector with prior forward price curve}
}
\value{
instance of the MSFC class
}
\description{
Creates a smooth forward curve from futures prices for a flow delivery
}
\examples{
# calculate forward curve for synthetic futures contracts, without prior

# date for curve calculation and contract information
tdate <- as.Date("2021-06-17")
include <- rep(TRUE, 10)
contract <- c("JUL-21", "AUG-21", "SEP-21", "OCT-21", "NOV-21", "DEC-21",
"Q1-22", "Q2-22", "Q3-22", "Q4-22")

sdate <- as.Date(c("2021-07-01", "2021-08-01", "2021-09-01", "2021-10-01",
"2021-11-01", "2021-12-01", "2022-01-01", "2022-04-01", "2022-07-01", "2022-10-01"))

edate <- as.Date(c("2021-07-30", "2021-08-31", "2021-09-30", "2021-10-31",
"2021-11-30", "2021-12-31", "2022-03-31", "2022-06-30", "2022-09-30", "2022-12-31"))

f <- c(32.55, 32.50, 32.50, 32.08, 36.88, 39.80, 39.40, 25.20, 21.15, 29.50)

fwd_curve <- msfc(tdate = tdate,
include = include,
contract = contract,
sdate = sdate,
edate = edate,
f = f)
}
