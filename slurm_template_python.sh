#!/bin/bash --login

# SLURM directives
#
# Here we specify to SLURM we want two nodes (--nodes=2) with
# a wall-clock time limit of ten minutes (--time=00:10:00).
#
# Replace [your-project] with the appropriate project name
# following --account (e.g., --account=project123).

#SBATCH --nodes=1
#SBATCH --time=00:10:00
#SBATCH --account=pawsey0152
#SBATCH --export=NONE

# This bastard fucks up everything
module unload PrgEnv-cray/5.2.82

# default is 2.6
module load python/2.7.10

# python modules should be selected according to the python version
module load argparse

module load numpy
module load opencv

module load mpi4py

# -n is the total number of cores you want
# -N is the number of cores per node that should be used (24 on Magnus)
aprun -n 24 -N 24 python ./processing_wrapper.py /group/pawsey0152/esansom/data 0 1n
