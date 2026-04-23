#%Module
#
# Loads environment for rrfs workflow on native Azure Cyclecloud
#

module use /shared/spack-stack/envs/ue-gcc9-az/modules/Core

if {![info exists ::env(LMOD_VERSION_MAJOR)]} {
    module load stack-gcc/9.2.0
    module load stack-openmpi/4.1.7a1
    module load cmake/3.31.7
    module load parallel-netcdf/1.12.3
    module load parallelio/2.6.2
    module load jasper/4.2.4
	module load libpng/1.6.37
} else {
    depends-on stack-gcc/9.2.0
    depends-on stack-openmpi/4.1.7a1
    depends-on cmake/3.31.7
    depends-on parallel-netcdf/1.12.3
    depends-on parallelio/2.6.2
    depends-on jasper/4.2.4
	depends-on libpng/1.6.37
}

if { [ module-info mode load ] } {
    setenv PNETCDF $env(parallel_netcdf_ROOT)
}
if { [ module-info mode unload ] } {
    unset env(PNETCDF)
}

setenv CMAKE_C_COMPILER {mpicc}
setenv CMAKE_CXX_COMPILER {mpic++}
setenv CMAKE_Fortran_COMPILER {mpifort}
