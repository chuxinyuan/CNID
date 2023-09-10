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
#' "110101840116177"
#' )
#' zodiac(id)
#'
#' @export

#------------------------------------------------------------------------------#

zodiac = function(id) {
  cnid_info(id)$zodiac
}

#------------------------------------------------------------------------------#