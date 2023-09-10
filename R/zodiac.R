#' @title Obtain zodiac information by ID number
#'
#' @description
#' obtain zodiac information by ID number.
#'
#' @param id A vector of ID numbers.
#'
#' @return Zodiac vector obtained by ID numbers.
#'
#' @examples
#'
#' id = c(
#' "652801197305161555", 
#' "110101841125178"
#' )
#' zodiac(id)
#'
#' @export

#------------------------------------------------------------------------------#

zodiac = function(id) {
  cnid_info(id)$zodiac
}

#------------------------------------------------------------------------------#