#' Check the contents of a file geodatabase (.gdb) so features and rasters contained in it can be opened.
#'
#' This function simply takes a  path to a file geodatabase, and shows the contents of the it.
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
