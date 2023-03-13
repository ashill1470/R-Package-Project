df_apply <- function(.data, .fun, .filter, ...) {
  column_filter <- sapply(.data, .filter)

  column_function <- lapply(names(.data)[column_filter], .fun)
}
