#' Maximos y Minimos
#'
#' @description
#' La función realiza una seleccion del número maximo y minimo a partir de una serie de datos
#'
#'
#' @param x Debes meter una lista con valores numericos
#'
#' @return
#' @export
#'
#' @author Guadalupe
#' @examples
#' maxminR(c(10, 20, 5, 15, 8, 30, -5)
#'
maxminR <- function(x){
  num_max <- max(x)
  num_min <- min(x)
  return(list(Maximo = num_max, Minimo = num_min))
}

