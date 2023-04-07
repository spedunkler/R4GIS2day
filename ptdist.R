library(terra)

## ---- raster-2a1--------------------------------------------------------------
filename <- system.file("ex/elev.tif", package="terra")
basename(filename)


## ---- raster-2a2--------------------------------------------------------------
r <- rast(filename)
sources(r)
hasValues(r)
plot(r, main="SpatRaster from file")

ptlonlat <- cbind(id=1, part=1, 6, 49.8)
pt <- vect(ptlonlat)
ptras <- rasterize(pt,r)
ptdist <- distance(ptras)
plot(ptdist)
