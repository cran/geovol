\name{geovolTest}
\alias{geovolTest}

\title{Test for GEOVOL}

\description{  
Compute the GEOVOL test statistic for examining the null hypothesis that the 
average correlation of the squared volatility standardized residuals (which 
should be uncorrelated) is zero against the alternative that it is positive.
}

\usage{
geovolTest(e)
}

\arguments{
\item{e}{matrix, multivariate time series or \code{\link[zoo]{zoo}} object.}
}

\value{
The average correlation, the test statistic and the p-value.
}

\references{
Engle, R.F. and Campos-Martins, S. (2023) Measuring and hedging geopolitical 
risk, Journal of Financial Economics 147: 221--242. Available at 
\doi{10.1016/j.jfineco.2022.09.009}. 
}

\author{Susana Campos-Martins}

\seealso{
\code{\link{geovol}},
]\code{\link{geovolSim}}
}

\examples{
set.seed(123)

## Simulate from a GEOVOL model with s.d. 0.5 (default):
eSim <- geovolSim(n = 1500, m = 30)

## Test for GEOVOL:
geovolTest(e = eSim^2-1)
}

\keyword{Volatility Factor Models}
\keyword{Multivariate Time Series}
\keyword{Econometrics}
\keyword{Financial Econometrics}