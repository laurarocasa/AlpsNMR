% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nmr_detect_peaks_align.R
\name{nmr_align}
\alias{nmr_align}
\title{Align NMR spectra}
\usage{
nmr_align(
  nmr_dataset,
  peak_data,
  NMRExp_ref = NULL,
  maxShift_ppm = 0.0015,
  acceptLostPeak = FALSE
)
}
\arguments{
\item{nmr_dataset}{An \link{nmr_dataset_1D}}

\item{peak_data}{The detected peak data given by \link{nmr_detect_peaks}.}

\item{NMRExp_ref}{NMRExperiment of the reference to use for alignment}

\item{maxShift_ppm}{The maximum shift allowed, in ppm}

\item{acceptLostPeak}{This is an option for users, TRUE is the default value. If the users believe that all the peaks in the peak list are true positive, change it to FALSE.}
}
\value{
An \link{nmr_dataset_1D}, with the spectra aligned
}
\description{
This function is based on \link[speaq:dohCluster]{speaq::dohCluster}.
}
\seealso{
Other alignment functions: 
\code{\link{Pipelines}},
\code{\link{nmr_align_find_ref}()}

Other peak alignment functions: 
\code{\link{nmr_align_find_ref}()}

Other nmr_dataset_1D functions: 
\code{\link{[.nmr_dataset_1D}()},
\code{\link{computes_peak_width_ppm}()},
\code{\link{file_lister}()},
\code{\link{files_to_rDolphin}()},
\code{\link{format.nmr_dataset_1D}()},
\code{\link{get_integration_with_metadata}()},
\code{\link{is.nmr_dataset_1D}()},
\code{\link{load_and_save_functions}},
\code{\link{new_nmr_dataset_1D}()},
\code{\link{nmr_align_find_ref}()},
\code{\link{nmr_baseline_removal}()},
\code{\link{nmr_baseline_threshold}()},
\code{\link{nmr_detect_peaks_plot}()},
\code{\link{nmr_detect_peaks_tune_snr}()},
\code{\link{nmr_detect_peaks}()},
\code{\link{nmr_exclude_region}()},
\code{\link{nmr_integrate_peak_positions}()},
\code{\link{nmr_integrate_regions}()},
\code{\link{nmr_interpolate_1D}()},
\code{\link{nmr_meta_add}()},
\code{\link{nmr_meta_export}()},
\code{\link{nmr_meta_get_column}()},
\code{\link{nmr_meta_get}()},
\code{\link{nmr_normalize}()},
\code{\link{nmr_pca_build_model}()},
\code{\link{nmr_pca_outliers_filter}()},
\code{\link{nmr_pca_outliers_plot}()},
\code{\link{nmr_pca_outliers_robust}()},
\code{\link{nmr_pca_outliers}()},
\code{\link{nmr_ppm_resolution}()},
\code{\link{plot.nmr_dataset_1D}()},
\code{\link{plot_webgl}()},
\code{\link{print.nmr_dataset_1D}()},
\code{\link{rdCV_PLS_RF_ML}()},
\code{\link{rdCV_PLS_RF}()},
\code{\link{save_files_to_rDolphin}()},
\code{\link{to_ChemoSpec}()},
\code{\link{validate_nmr_dataset}()}
}
\concept{alignment functions}
\concept{nmr_dataset_1D functions}
\concept{peak alignment functions}
