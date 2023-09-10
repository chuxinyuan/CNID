#' @title Obtain age information by ID number
#'
#' @description
#' obtain age information by ID number, to the day.
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
#' age(id)
#'
#' @export

#------------------------------------------------------------------------------#

age = function(id) {
  cnid_info(id)$age
}

#------------------------------------------------------------------------------#