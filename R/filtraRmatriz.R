#' FitraRmatriz
#' @description
#' A partir de una matriz normalozada filtrar datos y generar un heatmap
#'
#' @param matriz
#' @param umbral
#'
#' @return
#' @export
#'
#' @examples
#'
#' matriz <- matrix(rnorm(100), nrow = 10)
#' rownames(matriz) <- paste0("Gen", 1:10)
#' colnames(matriz) <- paste0("Muestra", 1:10)
#'
#'
heatmap_filtrado <- function(matriz, umbral = -0.5) {
  matriz[matriz < umbral] <- 0

  Heatmap(
    matriz,
    heatmap_legend_param = list(title = "Valores"),
    cluster_columns = FALSE,
    cluster_rows = FALSE
  )
}
