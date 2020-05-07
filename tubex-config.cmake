## Try to find Tubex
## todo: generate this file with CMake

find_path(TUBEX_INCLUDE_DIR tubex.h
          PATH_SUFFIXES include/tubex)
find_path(TUBEX_ROB_INCLUDE_DIR tubex-rob.h
          PATH_SUFFIXES include/tubex-rob)
find_path(TUBEX_PYIBEX_INCLUDE_DIR tubex-pyibex.h
          PATH_SUFFIXES include/tubex-pyibex)

find_library(TUBEX_LIBRARY NAMES tubex
             PATH_SUFFIXES lib)
find_library(TUBEX_ROB_LIBRARY NAMES tubex-rob
             PATH_SUFFIXES lib)
find_library(TUBEX_PYIBEX_LIBRARY NAMES tubex-pyibex
             PATH_SUFFIXES lib)

set(TUBEX_VERSION 2.5.0) # todo: version number set in variable
set(TUBEX_LIBRARIES ${TUBEX_LIBRARY} ${TUBEX_ROB_LIBRARY} ${TUBEX_PYIBEX_LIBRARY})
set(TUBEX_INCLUDE_DIRS ${TUBEX_INCLUDE_DIR} ${TUBEX_ROB_INCLUDE_DIR} ${TUBEX_PYIBEX_INCLUDE_DIR})

# Optional 3rd party:

set(TUBEX_ODE_INCLUDE_DIR "") # optional
find_path(TUBEX_ODE_INCLUDE_DIR tubex-ode.h
          PATH_SUFFIXES include/tubex-ode)
set(TUBEX_INCLUDE_DIRS ${TUBEX_INCLUDE_DIRS} ${TUBEX_ODE_INCLUDE_DIR})

set(TUBEX_ODE_LIBRARY "") # optional
find_library(TUBEX_ODE_LIBRARY NAMES tubex-ode
             PATH_SUFFIXES lib)
set(TUBEX_LIBRARIES ${TUBEX_LIBRARIES} ${TUBEX_ODE_LIBRARY})