% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcEvalPsiClass.R
\docType{class}
\name{mcEvalPsi}
\alias{mcEvalPsi}
\title{R6 class for Monte-Carlo evaluation of various substitution estimators for exposures generated under the user-specified stochastic intervention function.}
\format{An \code{\link{R6Class}} generator object}
\usage{
mcEvalPsi
}
\description{
This R6 class performs the Monte-Carlo evaluation of the target parameters using the data generated under
 the user-specified arbitrary intervention \code{gstar}.
 For a given dataset, take \code{E[Y|sA,sW] = m.Q.init} and calcualte estimate of \code{psi_n} under \code{g_star}
 using Monte-Carlo integration:
 (*) \code{W} can be iid or not (\code{W}'s are never resampled).
 (*) Use \code{P_n(W) = 1} for the distribution of \code{W = (W_1,...,W_n)} and draw \code{n} new exposures
 \code{A=(A_1,...,A_n)} from the distribution of \code{g_star}.
 (*) Evaluate \code{n} summary measures \code{sA=(sA_1,...,sA_n)} using these \code{n} newly sampled exposures \code{A}.
 (*) Evaluate the subsititution estimators as an average of n predictions \code{E[Y=1|sA,sW]}.
 (*) Repeat \code{nrep} times until convergence of \code{psi_n}.
}
\details{
\itemize{
\item{\code{DatNet.ObsP0}} - .
\item{\code{DatNet.gstar}} - .
\item{\code{m.Q.init}} - .
\item{\code{m.Q.starA}} - .
\item{\code{m.Q.starB}} - .
\item{\code{QY.init}} - .
\item{\code{QY.starA}} - .
\item{\code{QY.starB}} - .
\item{\code{nOdata}} - .
\item{\code{p}} - .
}
}
\section{Methods}{

\describe{
  \item{\code{new(DatNet.ObsP0, DatNet.gstar, ...)}}{...}
  \item{\code{get.gcomp(m.Q.init)}}{...}
  \item{\code{get.tmleA(m.Q.starA, m.h.fit)}}{...}
  \item{\code{get.tmleB(m.Q.starB)}}{...}
  \item{\code{get.fiW()}}{...}
}
}
\keyword{R6}
\keyword{class}

