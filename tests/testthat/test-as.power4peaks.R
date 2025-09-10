test_that("errors are returned if the object is not of class dba", {
  expect_error(as.power4peaks(dba.object = power4peaks::endometrium_metadata))
})


test_that("no errors are returned if the object class dba (edgeR)", {
  expect_no_error(as.power4peaks(dba.object = power4peaks::endometrium))
})

test_that("no errors are returned if the object class dba (DEseq2)", {
  expect_no_error(as.power4peaks(dba.object = power4peaks::tamoxifen))
})

