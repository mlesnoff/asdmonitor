#' asdmonitor Shiny web interface
#' 
#' Launches the graphical interface (GUI) of the package.
#' 
#' @importFrom shiny runApp
#' 
#' 
#' @export

asdmonitor <- function() {
  
  runApp(system.file("shiny-apps", package = "asdmonitor"),
    display.mode = "normal", launch.browser = T)  
  
  }





