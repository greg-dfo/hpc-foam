#!/usr/bin/env bash
pwd

touch prep1.garb
sudo touch prep2.garb

/bin/sh -c "yum install -y kernel-headers --disableexcludes=all; yum -y install make gcc gcc-c++ gcc-gfortran cmake zlib-devel openmpi openmpi-devel fftw fftw-devel gsl gsl-devel gmp environment-modules; source /etc/profile.d/modules.sh; module add mpi/openmpi-$(uname -i); module load mpi/openmpi-$(uname -i)"


# Exit code 0 indicates success to Azure Batch
exit 0