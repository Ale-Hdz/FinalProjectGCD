# Read data for classes
activity_names <- read.csv(paste(data_path, 
                  "\\activity_labels.txt", sep = ""),
                  sep = "", header = FALSE)
activity_names <- activity_names$V2

# Generate names
classes <- df$activity
classes <- sapply(classes, 
                  function(x){activity_names[x]})

df$activity <- classes

print("Step 3 completed.")

