#' Load an Arc Feature (from .gdb or a .shp) as an sp object
#'
#' This function loads a feature from the ESRI environment, either
#' from a .gdb or a standalone .shp, and converts the feature
#' into an sp object (spatial polygons data frame, spatial points data frame, etc) from the sp package.
#' CRS information is maintained.
#'
#' @param infile Path to the input feature
#' @return A SpatVect of the infile
#' @examples my_vect<- feat_to_vect("./geodatabase_path/geodatabase.gdb/feature")
#' @export
#'
#'
feat_to_sp<- function(infile){
    arcgisbinding::arc.data2sf((arcgisbinding::arc.select(arcgisbinding::arc.open(infile))))
}
