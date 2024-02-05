#' Load an Arc raster dataset (from .gdb) as a RasterLayer
#'
#' This function loads a raster dataset from the ESRI environment,
#' from a .gdb, and converts the raster into a 
#' RasterLayer from the raster package. CRS information is maintained.
#'
#' @param infile Path to the input raster
#' @return A RasterLayer of the infile
#' @examples my_rast<- feat_to_raster("./geodatabase_path/geodatabase.gdb/raster")
#' @export
#'
#'
feat_to_raster<- function(infile){
    as.raster(arc.raster(arc.open(infile)))
}
