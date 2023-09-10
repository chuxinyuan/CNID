#' @title Obtain date of birth information by ID number
#'
#' @description
#' obtain date of birth information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Date of birth vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101840116177"
#' )
#' birth_date(id)
#'
#' @export

#------------------------------------------------------------------------------#

birth_date = function(id) {
  cnid_info(id)$birth_date
}

#------------------------------------------------------------------------------#