context("test CNID")

test_that("Obtain information based on Chinese ID number", {

  # Example
  id = c(
    "652801197305161555",
    "110101840116177"
  )
  cnid_info(id)

})
