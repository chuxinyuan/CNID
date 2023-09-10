#' @title Obtain gender information by ID number
#'
#' @description
#' obtain gender information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Gender vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101840116177"
#' )
#' gender(id)
#'
#' @export

#------------------------------------------------------------------------------#

gender = function(id) {
  cnid_info(id)$gender
}

#------------------------------------------------------------------------------#