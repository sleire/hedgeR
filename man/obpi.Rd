% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/obpi_strategy.R
\name{obpi}
\alias{obpi}
\title{Option Based Portfolio Insurance (OBPI)}
\usage{
obpi(
  q,
  tdate,
  f,
  k = f[1],
  vol,
  r = 0,
  tdays = 250,
  daysleft,
  tcost = 0,
  int = TRUE
)
}
\arguments{
\item{q}{numeric value for quantity to be hedged, either positive (net buyer) or negative (net seller)}

\item{tdate}{date vector with trading days}

\item{f}{numeric futures price vector}

\item{k}{numeric value for option strike price}

\item{vol}{value for volatility}

\item{r}{value for interest rate}

\item{tdays}{integer assumed number of trading days per year}

\item{daysleft}{integer with days left to option expiry}

\item{tcost}{numeric transaction costs pr unit}

\item{int}{TRUE/ FALSE integer restriction on tradable volume}
}
\value{
instance of the OBPI class
}
\description{
Implements OBPI strategy for commodity price risk management
}
\examples{
# OBPI for a buyer (seller), where stop loss is set 10\% above (below) initial market price.

set.seed(5)
# GBM price process parameters
mu <- 0.2
sigma <- 0.1
S0 <- 100

# time
Y <- 2
N <- 500
delta <- Y/N
t <- seq (0, 1, length = N + 1)

# price process and date vector
W <- c(0, cumsum ( sqrt(delta) * rnorm (N)))
f_gbm <- S0 * exp(mu * t + sigma * W)
tr_dates <- seq(Sys.Date(), Sys.Date()+500, by = "day")

#implement obpi strategy for buyer
obpi_b <- obpi(q = 10,
tdate = tr_dates,
f = f_gbm,
k = f_gbm[1],
vol = 0.2,
r =  0,
tdays = 250,
daysleft = length(f_gbm),
tcost = 0,
int = TRUE)

# implement obpi strategy for seller
obpi_s <- obpi(q = - 10,
tdate = tr_dates,
f = f_gbm,
k = f_gbm[1],
vol = 0.2,
r =  0,
tdays = 250,
daysleft = length(f_gbm),
tcost = 0,
int = TRUE)

}
