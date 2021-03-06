test_that("default cluster only creates once", {
  cl1 <- default_cluster()
  cl2 <- default_cluster()

  expect_identical(cl1, cl2)
})

test_that("subsetting cluster returns cluster", {
  expect_s3_class(default_cluster()[1], "multidplyr_cluster")
})

test_that("cluster has useful print method", {
  cl <- default_cluster()
  expect_known_output(print(cl), test_path("test-cluster-print.txt"))
})
