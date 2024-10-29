#' Heatmap for data
#'
#' @param x
#' @param mediciones
#' @param grupos
#'
#' @return
#' @export
#'
#' @examples
#'
#' mi_matriz <- matrix(rnorm(100), nrow = 10)
#' mi_matriz <- matrix(rnorm(100), nrow = 10)
#' mi_matriz <- matrix(rnorm(100), nrow = 10)
#'
#'
subset_heatmap <- function(x, mediciones = NULL,
                           grupos = NULL, return_plot = TRUE) {

  stopifnot(is.matrix(x))

  # subset matrix
  x_subset <- x[mediciones, grupos]

  # plot heatmap
  heatmap <- ComplexHeatmap::Heatmap(
    x_subset,
    cluster_columns = FALSE,
    heatmap_legend_param = list(title = "valores"))

  if(return_plot == TRUE) {return(heatmap)}
}

