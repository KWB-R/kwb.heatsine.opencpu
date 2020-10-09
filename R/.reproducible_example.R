repos <- "https://cran.rstudio.com"

install.packages(pkgs = c("jsonlite", "tibble", "remotes"), repos = repos)

# Install package to compare objects
install.packages("diffobj", repos = repos)

remotes::install_github("kwb-r/kwb.heatsine@v0.1.4")
## code to prepare `DATASET` dataset goes here
## code to prepare `DATASET` dataset goes here
load_temp <- function(base_name) {
  kwb.heatsine::load_temperature_from_csv(
    kwb.heatsine::extdata_file(base_name)
  )
}

data_sw <- load_temp("temperature_surface-water_TEGsee-mikrosieb.csv")
data_gw <- load_temp("temperature_groundwater_TEG343.csv")


data_sw_selected <- kwb.heatsine::select_timeperiod(
  data_sw,
  date_start = "2015-10-10",
  date_end = "2016-10-14"
)


data_gw_selected <- kwb.heatsine::select_timeperiod(
  data_gw,
  date_start = "2015-12-28",
  date_end = "2016-12-26"
)


args_list <- list(data_sw_selected = data_sw_selected,
                  data_gw_selected = data_gw_selected,
                  retardation_factor = 1.8,
                  sw_monitoring_id = attr(data_sw_selected, "monitoring_id"),
                  gw_monitoring_id = attr(data_gw_selected, "monitoring_id"),
                  limits = c(100, 500),
                  tolerance = 0.001,
                  debug = FALSE
)

json_args <- jsonlite::toJSON(args_list, pretty = TRUE)

args_list2 <- jsonlite::fromJSON(json_args)
args_list2$data_gw_selected <- tibble::as_tibble(args_list2$data_gw_selected)
args_list2$data_sw_selected <- tibble::as_tibble(args_list2$data_sw_selected)

identical(args_list, args_list2)

# Compare str() output for both lists
diffobj::diffObj(args_list, args_list2)

output <- do.call(kwb.heatsine::run_optimisation, args_list)
output2 <- do.call(kwb.heatsine::run_optimisation, args_list2)
