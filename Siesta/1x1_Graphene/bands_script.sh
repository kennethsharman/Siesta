#!/bin/bash

cp graphene.bands graphene_trimmed.txt

# Energy of the Fermi level
fermi=$(sed -n '1p' graphene_trimmed.txt)
echo "$fermi" >> fermi_energy.txt

# Minimum and maximum length of the path in k-space
path_len=$(sed -n '2p' graphene_trimmed.txt)
echo "$path_len" >> k_path_length.txt

# minimum and maximum eigenvalues
eigenval=$(sed -n '3p' graphene_trimmed.txt)
echo "$eigenval" >> eigenval_range.txt

# number of orbitals in the unit cell, number of different spin polarization,
# and number of k-points in the walk through the 1BZ
details=$(sed -n '4p' graphene_trimmed.txt)
echo "$details" >> info.txt

# Delete last 5 lines of file
for i in 1 2 3 4 5
do
	sed -i '$d' graphene_trimmed.txt
done

# Delete first four lines of file
sed -i '1,4d' graphene_trimmed.txt
sed -i ':a;N;$!ba;s/\n//g' graphene_trimmed.txt

# trimmed file has coordinate of the k-point in the path, and eigenvalues (in eV).
# there are as many eigenvalues as orbitals in the unit cell
