#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
<<<<<<< HEAD
=======

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
>>>>>>> 2e1efa25ef3ec30fad31de89a887ea842b658319
sbatch /data/src/PyHipp/rplparallel-slurm.sh

# second job - no dependencies, called from the day directory
jid2=$(sbatch /data/src/PyHipp/rse-slurm.sh)



# second set of jobs called from the day directory
# third set of jobs - depends on rse-slurm.sh, called from the day directory
jid3=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs1a-slurm.sh)
jid4=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs2a-slurm.sh)
jid5=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs3a-slurm.sh)
jid6=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp/rs4a-slurm.sh)

