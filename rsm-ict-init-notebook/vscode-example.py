# start VS Code on your host system (Windows or macOS)
# start the docker container on your local system using
# the launch menu
# click on the >< symbol on the lower left of the VS Code window and
# select "Attach to Running Container ..." and then select 
# rsm-jupyter (or rsm-jupyter-rs on Windows)

# %%
numbers = [2,4,8,10]

# %%
for number in numbers:
    print(number)

# %%
for number in numbers:
    print(number)

# %%
import pandas as pd

# %%
pd.DataFrame({"A": [1, 2, 3], "B": ["a", "b", "c"]})

# %%
numbers = "not a number"

# This is a comment
# Run the cell above and then run the loop again
