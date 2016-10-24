# load the source code of the functions to be tested
source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
	x <- c(1, 2, 3, 4, 5)
	
	expect_equal(range_value(x), 4)
	expect_length(range_value(x), 1)
	expect_type(range_value(x), 'double')
})

test_that("range value with NAs", {
	y <- c(1, 2, 3, 4, NA)
  
	expect_equal(range_value(y), NA_real_)
	expect_length(range_value(y), 1)
})


test_that("range value for logical vectors", {
	z <- c(TRUE, FALSE, TRUE)
  
	expect_equal(range_value(z), 1L)
	expect_length(range_value(z), 1)
	expect_type(range_value(z), 'integer')
})


test_that("range value throws an error", {
	w <- letters[1:5]
  
	expect_error(range_value(w))
})


source("../functions/missing-values.R")

context("Test for missing value") 

test_that("missing value", {
	x <- c(1, 2, 3, 4, 5)
	y <- c(1, 2, 3, 4, NA)
	z <- c(TRUE, FALSE, TRUE)
	w <- letters[1:5]
	
	expect_length(missing_values(x),1)
	expect_length(missing_values(y),1)
	expect_length(missing_values(z),1)
	expect_length(missing_values(w),1)
	expect_type(missing_values(x),'double')
	expect_type(missing_values(y),'double')
	expect_type(missing_values(z),'double')
	expect_type(missing_values(w),'double')
	expect_gte(missing_values(x),0)
	expect_gte(missing_values(y),0)
	expect_gte(missing_values(z),0)
	expect_gte(missing_values(w),0)
})