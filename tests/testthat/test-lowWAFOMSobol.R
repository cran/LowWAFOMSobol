context("Low WAFOM Sobol Sequence: test Low WAFOM Sobol Sequence")
library(LowWAFOMSobol)

test_that("test Low WAFOM Sobol dimMinMax", {
  rs <- lowWAFOMSobol.dimMinMax()
  expect_true(rs[1] <= 2)
  expect_true(rs[2] >= 80)
})

test_that("test Low WAFOM Sobol Sequence dimF2MinMax", {
  rs <- lowWAFOMSobol.dimF2MinMax(10)
  expect_true(rs[1] <= 10)
  expect_true(rs[2] >= 18)
})

test_that("test Low WAFOM Sobol Sequence points", {
  s <- 4
  m <- 10
  n <- 2^m
  matrix <- lowWAFOMSobol.points(dimR=s, dimF2=m, count=n)
  expect_equal(nrow(matrix), n)
  expect_equal(ncol(matrix), s)
  expect_true(all(matrix < 1))
  expect_true(all(matrix > 0))
})

test_that("test Low WAFOM Sobol Sequence points digitalShift", {
  s <- 4
  m <- 10
  n <- 2^m
  matrix <- lowWAFOMSobol.points(dimR=s, dimF2=m, count=n, digitalShift=TRUE)
  expect_equal(nrow(matrix), n)
  expect_equal(ncol(matrix), s)
  expect_true(all(matrix < 1))
  expect_true(all(matrix > 0))
})
