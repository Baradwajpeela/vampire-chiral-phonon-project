mv input0 input
mpiexec -np 8 vampire-parallel
mv input input0
#mv input1 input
#mpiexec -np 8 vampire-parallel
#mv input input1
#mv input2 input
#mpiexec -np 8 vampire-parallel
#mv input input2
gnuplot -p plotfield.gp
