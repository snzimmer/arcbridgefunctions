#' Write a terra SpatVect or sp object to an Arc feature (in a .gdb or as a .shp)
#'
#' This function writes a terra SpatVect or sp object as an Arc feature,
#' either as a standalone .shp or a feature in a .gdb.
#' A new .gdb can also be made during this step.
#' CRS information may be altered.
#'
#' @param infile SpatVect or sp object in your environment
#' @param path Full file path where you want to save - either a folder for a .shp or a .gdb (can be new or existing), and the file name (no extension necessary)
#'
#'
#' @return The object will be saved where specified
#' @examples save object as .shp:  write_vect("./desired_file_path/feature")
#' save object as feature in existing .gdb:  write_vect("./geodatabase_path/geodatabase.gdb/feature")
#' save object as feature in new .gdb:  write_vect("./geodatabase_path/new_geodatabase.gdb/feature")
#'
#' @export
#'
write_to_feat<- function(infile,file_path){
  arcgisbinding::arc.write(path = file_path,
                           if(class(infile)[1]=="SpatVector"){
                             data = as(infile, "Spatial")  # convert a SpatVect to a spdf for export
                           } else {
                             data=infile  # don't convert an spdf
                           },
                           validate=T)
  
}
