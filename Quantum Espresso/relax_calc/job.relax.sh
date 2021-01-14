#!/bin/bash

#SBATCH --time=0-00:10
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <hBN.relax.in> hBN.relax.out
