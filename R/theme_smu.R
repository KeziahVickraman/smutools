###-------------------------------------------------------------###
###         Creating Personalised Themes (SMU)                  ###
###-------------------------------------------------------------###

# load google font once when package loads
.onLoad <- function(libname, pkgname) {
  sysfonts::font_add_google("Source Sans 3", "source_sans")
  showtext::showtext_auto()
}

#' SMU ggplot2 theme
#'
#' A minimal theme using SMU brand colours (crimson \code{#C41230}).
#'
#' @param ... Arguments passed to \code{ggplot2::theme_minimal()}
#' @return A ggplot2 theme object
#' @export
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + theme_smu()
theme_smu <- function(...) {
  ggplot2::theme_minimal(base_family = "source_sans", ...) +
    ggplot2::theme(
      plot.title       = ggplot2::element_text(face   = "bold",
                                               colour = "#C41230",
                                               size   = 14),
      plot.subtitle    = ggplot2::element_text(colour = "#7a7a88"),
      axis.title       = ggplot2::element_text(face   = "bold",
                                               colour = "#1a1a2e"),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position  = "bottom"
    )
}

#' SMU colour palette
#' @export
smu_colours <- c(
  crimson = "#C41230",
  navy    = "#1a1a2e",
  grey    = "#7a7a88",
  white   = "#FFFFFF",
  light   = "#f5f5f7"
)

#' SMU discrete colour scale
#' @param ... Arguments passed to ggplot2::scale_colour_manual()
#' @export
scale_colour_smu <- function(...) {
  ggplot2::scale_colour_manual(values = unname(smu_colours), ...)
}

#' SMU discrete fill scale
#' @param ... Arguments passed to ggplot2::scale_fill_manual()
#' @export
scale_fill_smu <- function(...) {
  ggplot2::scale_fill_manual(values = unname(smu_colours), ...)
}

#' SMU dark ggplot2 theme
#' @export
theme_smu_dark <- function(...) {
  ggplot2::theme_minimal(base_family = "source_sans", ...) +
    ggplot2::theme(
      plot.background   = ggplot2::element_rect(fill = "#1a1a2e", colour = NA),
      panel.background  = ggplot2::element_rect(fill = "#1a1a2e", colour = NA),
      plot.title        = ggplot2::element_text(face   = "bold",
                                                colour = "#C41230",
                                                size   = 14),
      plot.subtitle     = ggplot2::element_text(colour = "#7a7a88"),
      axis.title        = ggplot2::element_text(face   = "bold",
                                                colour = "#f5f5f7"),
      axis.text         = ggplot2::element_text(colour = "#f5f5f7"),
      panel.grid.major  = ggplot2::element_line(colour = "#2e2e4e"),
      panel.grid.minor  = ggplot2::element_blank(),
      legend.background = ggplot2::element_rect(fill = "#1a1a2e", colour = NA),
      legend.text       = ggplot2::element_text(colour = "#f5f5f7"),
      legend.position   = "bottom"
    )
}
