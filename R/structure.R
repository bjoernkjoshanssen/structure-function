#' This is the title.
#'
#' This is the description.
#'
#' These are further details.
#'
#' @section A Custom Section:
#'
#' Text accompanying the custom section.
#'
#' @param x A description of the parameter 'x'. The
#'   description can span multiple lines.
#' @param y A description of the parameter 'y'.
#'
#' @export
#'
#' @examples
#' structure_function(1, 2) ## returns 3
#'
#' ## don't run this in calls to 'example(structure_function)'
#' \dontrun{
#'    structure_function(2, 3)
#' }
#'
#' ## don't test this during 'R CMD check'
#' \donttest{
#'    structure_function(4, 5)
#' }
structure_function <- function(x, y) {
    # x = string
    # y= m
    # output = output of structure function
    if (x == "") {
        DiagrammeR::grViz(
            'digraph G {
			    S0 [shape = box];
            }'
        )
    }
    if ((x == "0") || (x == "00")) {
        DiagrammeR::grViz(
            'digraph G {
				S0 [shape = box];
				S0 -> S0 [label = "0"];
			}'
        )
    }
    if (x == "01") {
        DiagrammeR::grViz(
            'digraph G {
            G0 [shape = box];
            G0 -> G0 [label = "0"];
            H0 [shape = box];
            H0 -> H0 [label = "0"];
            H0 -> H1 [label = "1"];
            }'
        )
    }
}

x <- c(0,1,0)