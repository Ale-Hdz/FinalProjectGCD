# Packages
library(dplyr)

# Random seed
set.seed(10)

# 1. Merges the training and the test sets
# to create one data set
source(".\\merge.R")
# 2. Extracts only the measurements on the mean 
# and standard deviation for each measurement. 
source(".\\mean-std.R")


