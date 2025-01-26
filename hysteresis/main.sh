mv input_Nd input
mpiexec -np 10 vampire-parallel
mv input input_Nd
mv output output_Nd
#mv input_Nd_off input
#mpiexec -np 10 vampire-parallel
#mv input input_Nd_off
#mv output output_Nd_off
#mv input_dipole input
#mpiexec -np 10 vampire-parallel
#mv input input_dipole
#mv output output_dipole
gnuplot -p plotfield.gp
