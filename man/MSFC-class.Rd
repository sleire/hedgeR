% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msfc_class.R
\docType{class}
\name{MSFC-class}
\alias{MSFC-class}
\title{An S4 class for the Maximum Smoothness Forward Curve (MSFC) in etrm}
\description{
An S4 class for the Maximum Smoothness Forward Curve (MSFC) in etrm
}
\section{Slots}{

\describe{
\item{\code{Name}}{A string with the acronym for Maximum Smoothness Forward Curve, "MSFC"}

\item{\code{TradeDate}}{The trading date}

\item{\code{BenchSheet}}{A data frame with futures contracts selected for calculation with MSFC computed prices}

\item{\code{Polynomials}}{The number of polynomials in the MSFC spline}

\item{\code{PriorFunc}}{A numeric vector with the prior function values}

\item{\code{Results}}{A data frame with daily values for the calculated MSFC and contracts in "BenchSheet"}

\item{\code{SplineCoef}}{List with coefficients for the polynomials in the MSFC spline}

\item{\code{KnotPoints}}{Vector with spline knot points}

\item{\code{CalcDat}}{Data frame extending "Results" with daily values for time vectors and polynomial coefficients used in calculation}
}}

