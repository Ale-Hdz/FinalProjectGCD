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

# 3. Uses descriptive activity names to name 
# the activities in the data set
# 4. Appropriately labels the data set with
# descriptive variable names. 
source(".\\names.R")