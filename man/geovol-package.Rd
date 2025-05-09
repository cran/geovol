\name{geovol-package}
\alias{geovol-package}
\docType{package}

\title{Geopolitical Volatility (GEOVOL) Modelling}

\description{
Simulation, estimation and testing for geopolitical volatility (GEOVOL) based on 
the global common volatility model of Engle and Campos-Martins (2023) 
<doi:10.1016/j.jfineco.2022.09.009>. GEOVOL is modelled as a latent 
multiplicative volatility factor with heterogeneous factor loadings. Estimation 
is carried out as a maximization-maximization procedure, where GEOVOL and the 
GEOVOL loadings are estimated iteratively until convergence.
}

\details{
  \tabular{ll}{
  Package: \tab GEOVOL\cr
  Type: \tab Package\cr
  Version: \tab 1.1\cr
  Date: \tab 2025-05-06\cr
  License: \tab GPL>=2\cr
  }
}

\references{
Engle, R.F. and Campos-Martins, S. (2023) Measuring and hedging geopolitical 
risk, Journal of Financial Economics 147: 221--242. Available at 
\doi{10.1016/j.jfineco.2022.09.009}. 
}

\author{
Susana Campos-Martins, 
\url{https://sites.google.com/site/susanacamposmartins/}\cr\cr
Maintainer: Susana Campos-Martins \cr
}

\seealso{
\code{\link{geovol}}, \code{\link{geovolSim}}, \code{\link{geovolTest}} 
}

\examples{
set.seed(123)

## Simulate from a GEOVOL model (default):
eSim <- geovolSim(n = 1500, m = 30)

## Test for GEOVOL:
geovolTest(e = eSim^2-1)

## Estimate a GEOVOL model:
eEst <- geovol(e = eSim)
eEst
}

\keyword{Volatility Factor Models}
\keyword{Multivariate Time Series}
\keyword{Econometrics}
\keyword{Financial Econometrics}
