#' Check the contents of a file geodatabase (.gdb)
#'
#' This function simply takes a path to a file geodatabase (.gdb), and shows the contents of it so features and rasters contained in it can be opened.
#'
#'
#' @param file_path Full file path to an existing geodatabase (.gdb)
#'
#'
#' @export
#'
check_gdb_contents<- function(file_path,...){
  arc.open(file_path)@children
}
