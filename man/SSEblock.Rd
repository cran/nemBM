% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SSEblock.R
\name{SSEblock}
\alias{SSEblock}
\title{Sum of squared error across blocks}
\usage{
SSEblock(X, M, partition, loops)
}
\arguments{
\item{X}{Initial binary network; of class \code{matrix}.}

\item{M}{Image matrix with block densities.}

\item{partition}{A partition in a vector format. Each unique value (positive integers) represents one cluster.}

\item{loops}{Wheter loops are allowed or not.}
}
\value{
Sum of squared error (a single value).
}
\description{
It calculates the sum of square differences between the desired (specified by an image matrix M) denstities and empirical densities.
}
\examples{
X <- matrix(sample(c(0,1), size = 9**2, replace = TRUE), nrow = 9)
diag(X) <- 0
M <- matrix(c(0.1, 0.4, 0.5, 0.3), nrow = 2)
partition <- c(1, 2, 2, 1, 1, 2, 2, 2, 1)
SSEblock(X = X, M = M, partition = partition, loops = TRUE)
}
\author{
Marjan Cugmas
}
