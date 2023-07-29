## Using conda (mamba)

# check which version of python is default
# should mention conda in the printed output

which python

# open a terminal 
# start by letting conda know what 'shell' you use (zsh) 

conda init zsh

# then close the terminal and re-open

# working with 'environments' (i.e., isolated collection of packages)
# list all available conda environment and kernels for Jupyter

cl

# want to create a new conda environment for a project? use cc
# the cc command will create an environment and a corresponding
# kernel that you can use in JupyterLab

cc myproject package_a package_b package_c

# run the below to add new environment an then check if it worked
# this will take a few minutes

cc myproject pyasn1
cl

# want to share your setting with someone else? use 'ce' to export

ce myproject myproject.yaml

# want to add an environment from someone else? use ci to import

ci their_project.yaml

# you can also use ce and ci to create a copy of an environment

ce myproject myproject.yaml
ci myproject.yaml copied_project
cl

# want to remove an existing environment? use cr to remove 

cr copied_project

# want to acivate a specific conda environment (e.g., myenv)?
# in JupyterLab you can use the 'kernel' 

conda activate myenv

# want to switch to another conda environment (e.g., another_env)?

conda activate another_env

# to get back to the main (base) environment provide by the docker
# container use

conda activate base

## Only use 'pip' to add packages that are not available through conda

# install python package from a terminal using the code below
pip install --user redis

# run python code from the command line to check that the new package
# is available to import
python -c "import redis; print(redis.__file__)"


# uninstall python packages from the terminal
pip uninstall --yes redis

# or cleanup from terminal
clean
