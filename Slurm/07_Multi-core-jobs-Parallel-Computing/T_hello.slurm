#!/bin/bash

#SBATCH --job-name=pthread-demo
# This is a 5 core job
#SBATCH --ntasks=1 --cpus-per-task=5 --mem-per-cpu=2g
#SBATCH --time=05:00

# Build the environment
module load calcua/2020a
module load intel/2020a

# Run the program
./T_hello
