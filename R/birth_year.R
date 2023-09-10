#' @title Obtain year of birth information by ID number
#'
#' @description
#' obtain year of birth information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Year of birth vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101841125178"
#' )
#' birth_year(id)
#'
#' @export

#------------------------------------------------------------------------------#

birth_year = function(id) {
  cnid_info(id)$birth_year
}

#------------------------------------------------------------------------------#