% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/area_estimation.R
\name{peaklist_accept_peaks}
\alias{peaklist_accept_peaks}
\title{Peak list: Create an \code{accepted} column based on some criteria}
\usage{
peaklist_accept_peaks(
  peak_data,
  nmr_dataset,
  nrmse_max = Inf,
  area_min = 0,
  area_max = Inf,
  ppm_min = -Inf,
  ppm_max = Inf,
  keep_others = TRUE
)
}
\arguments{
\item{peak_data}{The peak list (a data frame)}

\item{nmr_dataset}{The nmr_dataset where the peak_data was computed from}

\item{nrmse_max}{The normalized root mean squared error of the lorentzian peak fitting must be less than or equal to this value}

\item{area_min}{Peak areas must be larger or equal to this value}

\item{area_max}{Peak areas must be smaller or equal to this value}

\item{ppm_min}{The peak apex must be above this value}

\item{ppm_max}{The peak apex must be below this value}

\item{keep_others}{If \code{FALSE}, remove those peaks that do not satisfy the criteria}
}
\value{
The \code{peak_data}, with a new \code{accepted} column (and maybe some filtered rows)
}
\description{
Peak list: Create an \code{accepted} column based on some criteria
}
\examples{
# Fake data:
nmr_dataset <- new_nmr_dataset_1D(
  1:10,
  matrix(c(1:5, 4:2, 3, 0), nrow=1),
  list(external = data.frame(NMRExperiment = "10"))
)
peak_data <- data.frame(
  peak_id = c("Peak1", "Peak2"),
  NMRExperiment = c("10", "10"),
  sample_idx = c(1L,1L),
  ppm = c(5, 9),
  pos = c(5, 9),
  intensity = c(5, 3),
  ppm_infl_min = c(3, 8),
  ppm_infl_max = c(7, 10),
  gamma = c(1, 1),
  area = c(25, 3),
  norm_rmse = c(0.01, 0.8)
)
# Create the accepted column:
peak_data <- peaklist_accept_peaks(peak_data, nmr_dataset, area_min = 10)
stopifnot(all(peak_data$accepted == c(TRUE, FALSE)))
}
