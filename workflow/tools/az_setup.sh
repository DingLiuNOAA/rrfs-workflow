#!/bin/bash

module load gcc-9.2.0
module load mpi/hpcx-pmix-2.18

export NETCDF=/shared/dependencies/hpcx-pmix/netcdf
export PNETCDF=/shared/dependencies/hpcx-pmix/pnetcdf
export PIO=/shared/dependencies/hpcx-pmix/pio
export GRIB2=/shared/grib2

export PATH=$PATH:$NETCDF/bin:$PNETCDF/bin:$PIO/bin:$GRIB2/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$NETCDF/lib:$PNETCDF/lib:$PIO/lib:$GRIB2/lib
export CPATH=$CPATH:$NETCDF/include:$PNETCDF/include:$PIO/include:$GRIB2/include
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:$NETCDF:$PNETCDF:$PIO:$GRIB2
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$NETCDF/lib/pkgconfig:$PNETCDF/lib/pkgconfig:$GRIB2/lib/pkgconfig

export PIO_VERSION_MAJOR=2
export PIO_TYPENAME_VALID_VALUES="netcdf,netcdf4p,netcdf4c,pnetcdf"
