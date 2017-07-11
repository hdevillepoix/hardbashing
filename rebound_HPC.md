
module unload  PrgEnv-cray
module load PrgEnv-intel
git clone http://github.com/hannorein/rebound
cd rebound/examples/openmp
# disable graphical output
sed -i 's,^\(export OPENGL=\).*,\1'0',' Makefile
make
