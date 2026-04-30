###--------------------------------------------------------------------------###
###         Creating Personalised Themes (SMU)                               ###
###--------------------------------------------------------------------------###

#' SMU ggplot2 theme
#'
#' A minimal theme using SMU brand colours (crimson \code{#C41230}).
#'
#' @param ... Arguments passed to \code{ggplot2::theme_minimal()}
#' @return A ggplot2 theme object
#' @export
#' @examples
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + theme_smu()


theme_smu <- function() {
  ggplot2::theme_minimal(base_family = 'Source Sans 3') +
    ggplot2::theme(
      plot.title    = ggplot2::element_text(face   = 'bold',
                                            colour = '#C41230',
                                            size   = 14),
      plot.subtitle = ggplot2::element_text(colour = '#7a7a88'),
      axis.title    = ggplot2::element_text(face   = 'bold',
                                            colour = '#1a1a2e'),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position  = 'bottom'
    )
}
