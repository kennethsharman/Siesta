#!/bin/bash

#SBATCH --time=0-02:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <hBN.lattice_2550.in> hBN.lattice_2500.out
srun pw.x <hBN.lattice_2555.in> hBN.lattice_2555.out
srun pw.x <hBN.lattice_2560.in> hBN.lattice_2560.out
srun pw.x <hBN.lattice_2565.in> hBN.lattice_2565.out
srun pw.x <hBN.lattice_2570.in> hBN.lattice_2570.out
srun pw.x <hBN.lattice_2575.in> hBN.lattice_2575.out
srun pw.x <hBN.lattice_2580.in> hBN.lattice_2580.out
srun pw.x <hBN.lattice_2585.in> hBN.lattice_2585.out
srun pw.x <hBN.lattice_2590.in> hBN.lattice_2590.out
srun pw.x <hBN.lattice_2595.in> hBN.lattice_2595.out
srun pw.x <hBN.lattice_2600.in> hBN.lattice_2600.out
