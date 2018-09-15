#' Bar Charts Showing Mean and SD
#'
#' @description Dataset contains only 'y' and 'factor(x)'. The heights of the bars represent y-values against x-factors.
#' @import tidyverse
#' @import xfun
#' @import ggplot2
#'
#' @export
#' @examples
#' library(R11)
#' y = iris$Sepal.Length
#' x = iris$Species
#' # vertical
#' ggbar_MeanSD(x, y)
#' # horizontal
#' ggbar_MeanSD(x, y, alpha = 0.5) +
#'   coord_flip()
#' # set colors
#' ggbar_MeanSD(x, y, fill.bar = c("grey10", "grey50", "grey70"))+
#'   theme_bw()
#' # set ylim using coor_cartesian()
#' ggbar_MeanSD(x, y, alpha = 0.5) +
#'    coord_cartesian(ylim = c(0, 10))
#'
#' @seealso \code{\link[ggplot2]{geom_bar}}, \code{\link[tidyverse]}

ggbar_MeanSD <- function(x, y,
                    fill.bar = NULL,
                    width.bar = 0.5,
                    col.border = NULL,
                    size.border = 1,
                    alpha = 1,
                    width.errorbar = 0.3,
                    col.errorbar = NULL,
                    size.errorbar = 1)
  {

  if (requireNamespace("xfun", quietly = TRUE)){
    xfun::pkg_attach2(c("ggplot2", "tidyverse"))
  }


  data <- data.frame(x,y)
  data2 <- data %>%
    group_by(x) %>%
    summarise(y.mean = mean(y), sd = sd(y))

# color.default
  color.default = c("gray0", "red", "green", "blue", "cyan",
                    "magenta", "yellow", "gray", "purple", "darkorange",
                    "gold", "pink", "gray50", "plum", "red4",
                    "green4", "blue4", "cyan4", "magenta4", "cornsilk")
  color.default = color.default[1:length(levels(x))]
  if (is.null(fill.bar)){fill.bar = color.default}else{fill.bar = fill.bar}
  if (is.null(col.border)){col.border = fill.bar}else{col.border = col.border}
  if (is.null(col.errorbar)){col.errorbar = fill.bar}else{col.errorbar = col.errorbar}

# plot
  ggplot(data2) +
    geom_bar( aes(x=x, y=y.mean), stat="identity",
              fill=fill.bar, width = width.bar, colour=col.border, size=size.border,alpha=alpha)+
    geom_errorbar( aes(x=x, ymin=y.mean-sd, ymax=y.mean + sd),
                   width=width.errorbar, colour=col.errorbar, alpha=alpha, size=size.errorbar)+
    labs(x=deparse(substitute(x)), y = deparse(substitute(y)))

  }
