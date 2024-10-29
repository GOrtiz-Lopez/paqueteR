#' Title Encontrar la moda en un vector de una serie
#'
#' @description
#' La dunción utiliza aritmetica avazada para sacar la moda de un vector numérico
#'
#' @param serievector Debes meter un vector alfanumérico
#'
#' @return Me devuelve un valor númerico con la moda
#' @author Guadalupe Ortiz
#'
#' @importFrom ggplot2 ggplot
#'
#' @export
#'
#' @examples
#' getmode(c(1,2,2,2,3))
#'
getmode <- function(serievector) {
  uniqv <- unique(serievector)
  uniqv[which.max(tabulate(match(serievector, uniqv)))]
}
