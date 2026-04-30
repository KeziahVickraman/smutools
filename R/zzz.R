# R/zzz.R
.onLoad <- function(libname, pkgname) {
  sysfonts::font_add_google("Source Sans 3", "source_sans")
  showtext::showtext_auto()
}
