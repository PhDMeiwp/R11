#'
#' @title Default theme used in all `R11` package ggplots
#' @name theme_ggR11
#' @author Indrajeet Patil, Weiping Mei
#' @description Common theme used across all ggplots generated in `R11`
#'   and *assumed* by the author to be aesthetically pleasing to the
#'   user/reader.
#'
#' @param ggtheme A function, `ggplot2` theme name. Default value is
#'   `ggplot2::theme_bw()`. Any of the `ggplot2` themes, or themes from
#'   extension packages are allowed (e.g., `ggthemes::theme_economist()`,
#'   `hrbrthemes::theme_ipsum_ps()`, `ggthemes::theme_fivethirtyeight()`).
#' @param ggR11.layer Logical that decides whether `theme_ggR11`
#'   theme elements are to be displayed along with the selected `ggtheme`
#'   (Default: `TRUE`).
#'
#' @return A `ggplot2` object with the `theme_ggR11` theme.
#'
#' @import ggplot2
#' @importFrom grid unit
#'
#' @references
#' \url{https://indrajeetpatil.github.io/ggR11/articles/theme_ggR11.html}
#'
#' @export
#'

theme_ggR11 <- function(ggtheme = ggplot2::theme_bw(), ggR11.layer = TRUE) {
  if (isTRUE(ggR11.layer)) {
    ggtheme +
      ggplot2::theme(
        axis.title.x = ggplot2::element_text(size = 12, face = "bold"),
        strip.text.x = ggplot2::element_text(size = 12, face = "bold"),
        strip.text.y = ggplot2::element_text(size = 12, face = "bold"),
        strip.text = ggplot2::element_text(size = 12, face = "bold"),
        axis.title.y = ggplot2::element_text(size = 12, face = "bold"),
        axis.text.x = ggplot2::element_text(size = 12, face = "bold"),
        axis.text.y = ggplot2::element_text(size = 12, face = "bold"),
        axis.line = ggplot2::element_line(),
        legend.text = ggplot2::element_text(size = 12),
        legend.title = ggplot2::element_text(size = 12, face = "bold"),
        legend.title.align = 0.5,
        legend.text.align = 0.5,
        legend.key.height = grid::unit(x = 1, units = "line"),
        legend.key.width = grid::unit(x = 1, units = "line"),
        plot.margin = grid::unit(x = c(1, 1, 1, 1), units = "lines"),
        panel.border = ggplot2::element_rect(
          color = "black",
          fill = NA,
          size = 1
        ),
        plot.title = ggplot2::element_text(
          color = "black",
          size = 13,
          face = "bold",
          hjust = 0.5
        ),
        plot.subtitle = ggplot2::element_text(
          color = "black",
          size = 11,
          face = "bold",
          hjust = 0.5
        )
      )
  } else {
    ggtheme
  }
}

