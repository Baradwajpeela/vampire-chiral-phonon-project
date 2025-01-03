mv input_pre_pulse input
mpiexec -np 10 vampire-parallel
mv input input_pre_pulse
mv input_B+ input
mpiexec -np 10 vampire-parallel
mv input input_B+
cp output output_B+
mv input_pre_pulse input
mpiexec -np 10 vampire-parallel
mv input input_pre_pulse
mv input_B- input
mpiexec -np 10 vampire-parallel
mv input input_B-
cp output output_B-
mv input_pre_pulse input
mpiexec -np 10 vampire-parallel
mv input input_pre_pulse
mv input_B_0 input
mpiexec -np 10 vampire-parallel
mv input input_B_0
cp output output_B_0
gnuplot -p plot_B_M.gp
gnuplot -p plot_B_M_T.gp
gnuplot -p plot_t_M.gp
