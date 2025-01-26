mv input_Nd_10nm input
mpiexec -np 10 vampire-parallel
mv input input_Nd_10nm
mv output output_Nd_10nm
mv input_Nd_20nm input
mpiexec -np 10 vampire-parallel
mv input input_Nd_20nm
mv output output_Nd_20nm
mv input_Nd_30nm input
mpiexec -np 10 vampire-parallel
mv input input_Nd_30nm
mv output output_Nd_30nm
gnuplot -p plotfield_size.gp
