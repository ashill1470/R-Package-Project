df_apply <- function(.data, .fun, .filter, ...) {
  modified_columns <- lapply(.data, function(x) {
    if (.filter(x)){
      .fun(x, ...)
    } else {
      x
    }
  })
  return(data.frame(modified_columns))
}
