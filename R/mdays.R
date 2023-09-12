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
  
  days = integer(12)
  days[c(1, 3, 5, 7, 8, 10, 12)] = 31
  days[c(4, 6, 9, 11)] = 30
  
  if (
    month == 2 &&
    (year %% 4 == 0 & year %% 100 != 0) |
    (year %% 400 == 0)
  ) {
    days[2] = 29
  } else {
    days[2] = 28
  }
  
  return(days[month])
  
}

#------------------------------------------------------------------------------#

