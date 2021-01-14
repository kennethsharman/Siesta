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
srun pw.x <hBN.lattice_2490.in> hBN.lattice_2490.out
srun pw.x <hBN.lattice_2491.in> hBN.lattice_2491.out
srun pw.x <hBN.lattice_2492.in> hBN.lattice_2492.out
srun pw.x <hBN.lattice_2493.in> hBN.lattice_2493.out
srun pw.x <hBN.lattice_2494.in> hBN.lattice_2494.out
srun pw.x <hBN.lattice_2495.in> hBN.lattice_2495.out
srun pw.x <hBN.lattice_2496.in> hBN.lattice_2496.out
srun pw.x <hBN.lattice_2497.in> hBN.lattice_2497.out
srun pw.x <hBN.lattice_2498.in> hBN.lattice_2498.out
srun pw.x <hBN.lattice_2499.in> hBN.lattice_2499.out
srun pw.x <hBN.lattice_2500.in> hBN.lattice_2500.out
srun pw.x <hBN.lattice_2501.in> hBN.lattice_2501.out
srun pw.x <hBN.lattice_2502.in> hBN.lattice_2502.out
srun pw.x <hBN.lattice_2503.in> hBN.lattice_2503.out
srun pw.x <hBN.lattice_2504.in> hBN.lattice_2504.out
srun pw.x <hBN.lattice_2505.in> hBN.lattice_2505.out
srun pw.x <hBN.lattice_2506.in> hBN.lattice_2506.out
srun pw.x <hBN.lattice_2507.in> hBN.lattice_2507.out
srun pw.x <hBN.lattice_2508.in> hBN.lattice_2508.out
srun pw.x <hBN.lattice_2509.in> hBN.lattice_2509.out
srun pw.x <hBN.lattice_2510.in> hBN.lattice_2510.out
