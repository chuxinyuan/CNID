#' @title Obtain constellation information by ID number
#'
#' @description
#' obtain constellation information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Constellation vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101840116177"
#' )
#' constellation(id)
#'
#' @export

#------------------------------------------------------------------------------#

constellation = function(id) {
  cnid_info(id)$constellation
}

#------------------------------------------------------------------------------#