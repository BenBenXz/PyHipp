#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1       # number of processors per task
#SBATCH -J "rpllfp"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rpllfp-slurm.%N.%j.out # STDOUT
#SBATCH -e rpllfp-slurm.%N.%j.err # STDERR
<<<<<<< HEAD
=======

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
>>>>>>> 2e1efa25ef3ec30fad31de89a887ea842b658319
python -u -c "import PyHipp as pyh; \
import time; \
pyh.RPLLFP(saveLevel=1); \
print(time.localtime());"

