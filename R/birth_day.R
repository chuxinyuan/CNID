#' @title Obtain day of birth information by ID number
#'
#' @description
#' obtain day of birth information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Day of birth vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101840116177"
#' )
#' birth_day(id)
#'
#' @export

#------------------------------------------------------------------------------#

birth_day = function(id) {
  cnid_info(id)$birth_day
}

#------------------------------------------------------------------------------#