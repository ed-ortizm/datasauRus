% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasaurus-package.R
\docType{data}
\name{box_plots}
\alias{box_plots}
\title{Box plot data}
\format{
A data frame with 2484 rows and 5 variables:
\itemize{
\item \strong{left}: data pulled to the left
\item \strong{lines}: data with arbitrary spikes along a range
\item \strong{normal}: normally distributed data
\item \strong{right}: data pulled to the right
\item \strong{split}: split data
}
}
\usage{
box_plots
}
\description{
This dataset is the box plot data produced by Matjeka &
Fitzmaurice to demonstrate applicability of their process.
}
\examples{
summary(box_plots)

## base plot

#save current settings
state = par("mar", "mfrow")

par(mfrow = c(5, 2), mar = c(1, 2, 2, 1))

nms = names(box_plots)

for (i in 1:5) {
  nm = nms[i]
  hist(box_plots[[nms[i]]],
       breaks = 100,
       main = nm)
  boxplot(box_plots[[nms[i]]],
          horizontal = TRUE)
}


#reset settings
par(state)

## ggplot
if (require(ggplot2)) {
  ggplot(box_plots, aes(x = left)) +
    geom_density()
  ggplot(box_plots, aes(x = lines)) +
    geom_density()
  ggplot(box_plots, aes(x = normal)) +
    geom_density()
  ggplot(box_plots, aes(x = right)) +
    geom_density()
  ggplot(box_plots, aes(x = split)) +
    geom_density()
}
}
\references{
Matejka, J., & Fitzmaurice, G. (2017).
Same Stats, Different Graphs: Generating Datasets with
Varied Appearance and Identical Statistics through Simulated
Annealing. \emph{CHI 2017 Conference proceedings: ACM SIGCHI
Conference on Human Factors in Computing Systems.}
Retrieved from \url{https://www.autodeskresearch.com/publications/samestats}. #nolint
}
\keyword{datasets}
