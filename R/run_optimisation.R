#' JSON wrapper function for kwb.heatsine::run_optimisation
#' @param data_sw_selected data.frame with daily data temperature data of surface water monitoring point
#' with columns "date" (format: "YYYY-MM-DD") and "value" (format: double, temperature in degree Celsius)
#' for selected time period
#' @param data_gw_selected data.frame with daily data temperature data of groundwater monitoring point
#' with columns "date" (format: "YYYY-MM-DD") and "value" (format: double, temperature in degree Celsius)
#' for selected time period
#' @param retardation_factor hydraulic retardation factor (default: 2)
#' @param sw_monitoring_id optional label for surface water monitoring id (default: "surface-water monitoring point"
#' or attr(data_sw_selected, "monitoring_id") if data imported with  \code{\link{load_temperature_from_csv}}), otherwise
#' can be any user-defined character string to be used as label for the monitoring point
#' @param gw_monitoring_id optional label for groundwater monitoring id (default: "surface-water monitoring point"
#' or attr(data_sw_selected, "monitoring_id") if data imported with  \code{\link{load_temperature_from_csv}}), otherwise
#' can be any user-defined character string to be used as label for the monitoring point
#' @param limits minimum/maximum period length for sinus optimisation in days (default: c(100, 500))
#' @param tolerance the desired accuracy (default: 0.001
#' @param debug show debug messages (default: FALSE)
#' @return json list with sim/observation data ("data") fit parameters ("paras"), goodness-of-fit values ("gof")
#' traveltimes ("traveltimes") and special (min, max, turning) points ("points") as returned by
#' \link[kwb.heatsine]{get_predictions}
#' @export
#' @importFrom kwb.heatsine run_optimisation
#' @importFrom jsonlite toJSON
#' @importFrom tibble as_tibble

run_optimisation <- function(data_sw_selected,
                             data_gw_selected,
                             retardation_factor = 1.8,
                             sw_monitoring_id = attr(data_sw_selected, "monitoring_id"),
                             gw_monitoring_id = attr(data_gw_selected, "monitoring_id"),
                             limits = c(100, 500),
                             tolerance = 0.001,
                             debug = FALSE) {

  args_list <- list(
    data_sw_selected <- tibble::as_tibble(data_sw_selected),
    data_gw_selected <- tibble::as_tibble(data_gw_selected),
    retardation_factor,
    sw_monitoring_id,
    gw_monitoring_id,
    limits,
    tolerance,
    debug
  )

  output <- base::do.call(kwb.heatsine::run_optimisation, args_list)
  jsonlite::toJSON(output, pretty = TRUE)
}
