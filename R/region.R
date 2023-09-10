#' @title Obtain region information by ID number
#'
#' @description
#' obtain region information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Region vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101840116177"
#' )
#' region(id)
#'
#' @export

#------------------------------------------------------------------------------#

region = function(id) {
  cnid_info(id)$region
}

#------------------------------------------------------------------------------#