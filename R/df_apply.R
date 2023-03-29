
#' Apply a function to specific columns of a data frame
#'
#' @param .data A data frame.
#' @param .fun A function that takes in a vector and returns a vector.
#' @param .filter A function that takes in a vector and returns a logical vector.
#' @param ... Additional arguments to pass to .fun and .filter.
#'
#' @return A data frame that is a modified version of .data
#' @export
#'
#' @examples
#' df <- data.frame(
#'   A = c(1, 2, 3),
#'   B = c(4, 5, 6),
#'   C = c("foo", "bar", "baz"))
#' my_fun <- function(x) x * 2
#' my_filter <- is.numeric()
#' df_apply(df, my_fun, my_filter)
df_apply <- function(.data, .fun, .filter, ...) {
  modified_columns <- lapply(.data, function(x) {
    if (!is.data.frame(.data)){
      stop("Data must be a dataframe!")
    }
    if (.filter(x)){
      .fun(x, ...)
    } else {
      x
    }
  })
  return(data.frame(modified_columns))
}
