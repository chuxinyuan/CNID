#' @title Obtain age information by ID number
#'
#' @description
#' obtain age information by ID number, only by year, not the specific date.
#'
#' @param id A vector of ID numbers.
#'
#' @return Age vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101841125178"
#' )
#' age_by_year(id)
#'
#' @export

#------------------------------------------------------------------------------#

age_by_year = function(id) {
  cnid_info(id)$age_by_year
}

#------------------------------------------------------------------------------#