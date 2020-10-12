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

run_optimisation <- function(json_args) {
  json_args["data_gw_selected"] <- tibble::as_tibble(json_args["data_gw_selected"])
  json_args["data_sw_selected"] <- tibble::as_tibble(json_args["data_sw_selected"])
  output <- base::do.call(kwb.heatsine::run_optimisation, json_args)
  jsonlite::toJSON(output, pretty = TRUE)
}
