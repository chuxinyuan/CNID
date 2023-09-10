#' @title Obtain month of birth information by ID number
#'
#' @description
#' obtain month of birth information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Month of birth vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101840116177"
#' )
#' birth_month(id)
#'
#' @export

#------------------------------------------------------------------------------#

birth_month = function(id) {
  cnid_info(id)$birth_month
}

#------------------------------------------------------------------------------#