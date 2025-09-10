test_that("errors are returned if the object is not of class dba", {
  expect_error(get.stats(dba.object = power4peaks::endometrium_metadata, contrast = c("Condition", "Tumor", "Normal"), design = "~ Condition", diff.method = "DESeq2"))
})

test_that("no errors are returned if the object class dba (method DESeq2)", {
  expect_no_error(get.stats(dba.object = power4peaks::endometrium, contrast = c("Condition", "Tumor", "Normal"), design = "~ Condition", diff.method = "DESeq2"))
})

test_that("no errors are returned if the object class dba (method edgeR)", {
  expect_no_error(get.stats(dba.object = power4peaks::endometrium, contrast = c("Condition", "Tumor", "Normal"), design = "~ Condition", diff.method = "edgeR"))
})
