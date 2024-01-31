import os
# Replace 'C:\path\to\your\R\installation' with the actual path to the R installation
r_home_path = r'C:\Program Files\R\R-4.3.2'
# Set the R_HOME environment variable
os.environ['R_HOME'] = r_home_path
# Check if R_HOME is set correctly
print(os.environ['R_HOME'])
import rpy2.robjects as robjects
from rpy2.robjects.packages import importr
import rpy2.robjects as robjects
from rpy2.robjects.packages import importr

# import R's utility package
utils = importr('utils')
# select a mirror for R packages
utils.chooseCRANmirror(ind=1)  # select the first mirror in the list
