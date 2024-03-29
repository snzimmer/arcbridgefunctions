% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_gdb_contents.R
\name{check_gdb_contents}
\alias{check_gdb_contents}
\title{Check the contents of a file geodatabase (.gdb)}
\usage{
check_gdb_contents(file_path)
}
\arguments{
\item{file_path}{Full file path to an existing geodatabase (.gdb)}
}
}
\description{
This function simply takes a path to a file geodatabase (.gdb), and shows the contents of it so features and rasters contained in it can be opened.
}
\examples{
check_gdb_contents("./geodatabase_path.gdb")

}
