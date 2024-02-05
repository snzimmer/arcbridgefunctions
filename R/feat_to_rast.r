#' Load an Arc raster dataset (from .gdb) as a terra SpatRast
#'
#' This function loads a raster dataset from the ESRI environment,
#' from a .gdb, and converts the raster into a 
#' SpatRast from the terra package. CRS information is maintained.
#'
#' @param infile Path to the input raster
#' @return A SpatRast of the infile
#' @examples my_rast<- feat_to_rast("./geodatabase_path/geodatabase.gdb/raster")
#' @export
#'
#'
feat_to_rast<- function(infile){
    terra::rast(as.raster(arc.raster(arc.open(infile))))
}
