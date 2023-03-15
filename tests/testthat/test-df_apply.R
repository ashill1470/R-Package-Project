df <- data.frame(
  A = c(1, 2, 3),
  B = c(4, 5, 6),
  C = c("foo", "bar", "baz")
)

test_that("df_apply works", {
  expect_equal(
  df_apply(df, function(x) x * 2, function(x) is.numeric(x)),
  data.frame(
    A = c(2, 4, 6),
    B = c(8, 10, 12),
    C = c("foo", "bar", "baz")
  ))
})
