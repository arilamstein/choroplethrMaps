% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/county.R
\docType{data}
\name{county.map}
\alias{county.map}
\title{Map of the counties of each of the 50 US states plus the district of columbia.}
\usage{
data(county.map)
}
\description{
A data.frame which contains a map of all 50 US States plus 
the District of Columbia.  The shapefile
was modified using QGIS in order to 1) remove
Puerto Rico 2) remove islands off of Alaska that
crossed the antimeridian 3) renamed the county "Dona Ana" (which is properly written with a tilde over the
first "n") to "Dona Ana" because R CMD check emits a warning if data contains non-ASCII characters 4) some columns were added for convenience.
}
\examples{
\dontrun{
# render the map with ggplot2
library(ggplot2)

data(county.map)
ggplot(county.map, aes(long, lat, group=group)) + geom_polygon()
}
}
\references{
Taken from the US Census 2010
Cartographic Boundary shapefiles page (https://www.census.gov/geo/maps-data/data/tiger-cart-boundary.html) in May 2014.
The resolutions is 20m (20m = 1:20,000,000).
}
