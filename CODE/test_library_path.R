# CHECK ON LIBRARY PATHS

#---------------------------------------------------------
# It must be =
.libPaths()
[1] "C:/Program Files/R/R-4.0.2/library"

# Else do

myPaths <- .libPaths()   # get the paths
myPaths <- c(myPaths[2], myPaths[1])  # switch them
.libPaths(myPaths)  # reassign them

#---------------------------------------------------------