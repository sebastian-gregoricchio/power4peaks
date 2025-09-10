test_that("power4peaks.stats show-method", {
  p4p = as.power4peaks(dba.object = power4peaks::endometrium)
  expect_no_failure(show(p4p))
})
