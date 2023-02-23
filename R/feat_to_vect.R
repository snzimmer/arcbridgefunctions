#' Load an Arc Feature (from .gdb or a .shp) as a terra SpatVect
#'
#' This function loads a feature from the ESRI environment, either
#' from a .gdb or a standalone .shp, and converts the feature
#' into a SpatVect from the terra package. CRS information is maintained.
#'
#' @param infile Path to the input feature
#' @return A SpatVect of the infile
#' @examples my_vect<- feat_to_vect("./geodatabase_path/geodatabase.gdb/feature")
#' @export
#'
#'
feat_to_vect<- function(infile){
    terra::vect(arcgisbinding::arc.data2sf((arcgisbinding::arc.select(arcgisbinding::arc.open(infile)))))
}
