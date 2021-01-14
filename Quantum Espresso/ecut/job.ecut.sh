#!/bin/bash

#SBATCH --time=0-01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <hBN.ecut_10.in> hBN.ecut_10.out
srun pw.x <hBN.ecut_20.in> hBN.ecut_20.out
srun pw.x <hBN.ecut_30.in> hBN.ecut_30.out
srun pw.x <hBN.ecut_40.in> hBN.ecut_40.out
srun pw.x <hBN.ecut_50.in> hBN.ecut_50.out
srun pw.x <hBN.ecut_60.in> hBN.ecut_60.out
srun pw.x <hBN.ecut_70.in> hBN.ecut_70.out
srun pw.x <hBN.ecut_80.in> hBN.ecut_80.out
srun pw.x <hBN.ecut_90.in> hBN.ecut_90.out
srun pw.x <hBN.ecut_100.in> hBN.ecut_100.out
srun pw.x <hBN.ecut_120.in> hBN.ecut_120.out
srun pw.x <hBN.ecut_140.in> hBN.ecut_140.out
srun pw.x <hBN.ecut_160.in> hBN.ecut_160.out
srun pw.x <hBN.ecut_180.in> hBN.ecut_180.out
srun pw.x <hBN.ecut_200.in> hBN.ecut_200.out
srun pw.x <hBN.ecut_250.in> hBN.ecut_250.out
srun pw.x <hBN.ecut_300.in> hBN.ecut_300.out
srun pw.x <hBN.ecut_350.in> hBN.ecut_350.out
srun pw.x <hBN.ecut_400.in> hBN.ecut_400.out
srun pw.x <hBN.ecut_450.in> hBN.ecut_450.out
srun pw.x <hBN.ecut_500.in> hBN.ecut_500.out
