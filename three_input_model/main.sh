mv input_B+ input
mpiexec -np 6 vampire-parallel
mv input input_B+
cp output output_B+
mv input_B- input
mpiexec -np 6 vampire-parallel
mv input input_B-
cp output output_B-
gnuplot -p plot_B_M.gp
