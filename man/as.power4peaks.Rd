% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as.power4peaks.R
\name{as.power4peaks}
\alias{as.power4peaks}
\title{as.power4peaks}
\usage{
as.power4peaks(dba.object, contrast = 1, p.adjust.method = "BH")
}
\arguments{
\item{dba.object}{An object of class \code{DBA} obtained from DiffBind.}

\item{contrast}{Numeric value indicating the index corresponding to a contrast stored in the dba.object. Default: \code{1}.}

\item{p.adjust.method}{String indicating the method to use to correct the p-values. One among: "holm", "hochberg", "hommel", "bonferroni", "BH", "BY", "fdr", "none". Default: \code{BH}.}
}
\value{
An object of class \code{power4peaks.stats}.
}
\description{
Convert a DiffBind analyses object (class \code{DBA}) into an object of class \code{power4peaks}.
}
