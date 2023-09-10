#' @title Obtain days of a given year and month.
#'
#' @description
#' obtain days of a given year and month.
#'
#' @param month A given month, such as 2.
#' 
#' @param year A given year, such as 2022.
#'
#' @return Days of a given year and month.
#'
#' @examples
#'
#' mdays(2, 2022)
#'
#' @export

#------------------------------------------------------------------------------#

mdays = function(month, year = 2022) {
  x = paste0(year, "-", month, "-01")
  lubridate::days_in_month(x)
}

#------------------------------------------------------------------------------#