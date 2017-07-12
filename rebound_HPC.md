# How to compile rebound on Magnus Cray XC40

##  switch from the default Cray Programming Environment to the GNU one.
`module swap PrgEnv-cray/5.2.82 PrgEnv-gnu`

or 

`module swap PrgEnv-cray/5.2.82 PrgEnv-intel`

## get a vopy of rebound
`git clone http://github.com/hannorein/rebound`

`cd rebound/examples/openmp`

## make changes to Makefile
### if relevant, disable graphical output
`sed -i 's,^\(export OPENGL=\).*,\1'0',' Makefile`
### change compile line: GNU compiler
`$(CC) -shared $(OPT) -I../../src $(PREDEF) problem.c -L<full_path_to_rebound_src_dir>/librebound.so -o rebound`
### change compile line: Intel compiler


## compile
`make`

## prepare a slurm script
[Slurm script](slurm_template_C.sh)

## run on magnus
