#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Time taken (Start) (s)"
echo "Start time for rplparallel"
head -n 1  *.out

echo "Time taken (End) (s)"
echo "End time for rpl parallel"
tail -n 1 rplparallel-slurm*.out
echo "End time for rplsplit"
tail -n 1 rplsplit-slurm*.out


