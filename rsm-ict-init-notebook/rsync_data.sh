#!/usr/bin/env zsh

# sync a folder on your local system to the MSBA server 
# replace 'your-id' below with your @ucsd.edu user id
rsync -azvh -e ssh ~/rsm-ict-2023 your-id@rsm-compute-01.ucsd.edu:rsm-ict-2023/;

# Note: The above command must be run from a terminal. Using a bash kernel in Jupyter will
#       not work because you will likely be asked to provide your password
# Note: Connecting to the MSBA server from off-campus requires that you are connected to VPN