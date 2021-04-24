# Getting and cleaning data course project

## Files 
The files included for complete the assignment are:
  1. ```run_analysis.R```: Main script, used to call the rest os scripts.
  2. ```merge.R```: Script for step 1. Load required dataset divided in train and test and merges all into a single data frame called ```df```. For this purpose I use the functions ```rbind()``` and ```cbind()```.
  3. ```mean-std.R```: Script for step 2. Selects all the columns in the data.frame from step 1 which contais ```mean``` or ```std``` and stores the result in a new data frame called ```filtered_df```.
  4. ```activity_names.R```: Script for step 3. Modifies "activity" column by replacing every index by its corresponding activity name. The result is saved in df data frame.
  5. ```names.R```: Script for step 4. Load the names for the data frame included in ```features.txt``` and modify them to make more readable, finally set the ```df``` names to the modified readable names.
  6. ```average.R```: Script for step 5. Creates a new data frame taken as basis ```df``` and adds a new column with the data contained in ```subject_train.txt``` and ```subject_test.txt``` to add information about the subject who did the activity. After that group the new data frame by activity and subject and stores the value in  ```df_subject```. Finally it gets the average for each group and stores the result into ```avg_group```, this variable is the one that is saved into the result called ```05-group_avg.txt```.

If you need more details about the scripts there are a lot comments in the each one describing each block of code.

## Load result
For loading the resulting file you must use the instructions ```read.table(paste(your_path_to_the_file, "\\05-group_avg.txt", sep = ""), header = TRUE)```

## Notes
This repository do not contain the "UCI HAR Dataset" to avoid redundacy, if you want to run the scripts please add this folder into the "data" folder.

### Thank you so much.
