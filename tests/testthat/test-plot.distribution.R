p4p = as.power4peaks(dba.object = power4peaks::endometrium)

test_that("errors are returned if the object is not of class power4peaks.stats", {
  expect_error(plot.stat.distribution(power4peaks.stats = power4peaks::endometrium_metadata))
})


test_that("no errors are returned if the object class power4peaks.stats (adapt.y.axis)", {
  expect_no_error(plot.stat.distribution(power4peaks.stats = p4p, adapt.y.axis = FALSE))
})

test_that("no errors are returned if the object class power4peaks.stats (adapt.y.axis)", {
  expect_no_error(plot.stat.distribution(power4peaks.stats = p4p, adapt.y.axis = TRUE))
})


test_that("no errors are returned if the object class power4peaks.stats (df provided manually)", {
  expect_no_error(plot.stat.distribution(power4peaks.stats = p4p, adapt.y.axis = TRUE, df1 = 5, df2 = 16))
})

