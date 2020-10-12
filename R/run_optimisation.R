#' JSON wrapper function for kwb.heatsine::run_optimisation
#' @param json_args arguments for function \link[kwb.heatsine]{run_optimisation}
#' in json format
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
