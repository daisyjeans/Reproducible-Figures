## a function for bootstrapping the correlation data 

correlation_function <- function(data, indices) {
  resampled_data <- data[indices, ]
  cor(resampled_data$body_mass_g, resampled_data$flipper_length_mm, use = "complete.obs")
} #any rows with NA are not taken into consideration, as this would prevent the calculation of a correlation 