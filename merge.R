# Path variables
wd <- "." # Your working directory path
setwd(wd)

data_path <- paste(wd, "\\data\\UCI HAR Dataset", sep = "")
train_path <- paste(data_path, "\\train", sep = "")
test_path <- paste(data_path, "\\test", sep = "")
results_path <- paste(wd, "\\data\\results", sep = "")

if(!dir.exists(results_path)) {dir.create(results_path)}

# Load data sets
df_x_train <- read.csv(paste(train_path, "\\X_train.txt", sep = ""),
                      sep = "", header = FALSE)
df_y_train <- read.csv(paste(train_path, "\\Y_train.txt", sep = ""),
                       sep = "", header = FALSE)
df_x_test <- read.csv(paste(test_path, "\\X_test.txt", sep = ""),
                     sep = "", header = FALSE)
df_y_test <- read.csv(paste(test_path, "\\Y_test.txt", sep = ""),
                      sep = "", header = FALSE)

print("X train dim:")
print(dim(df_x_train))
print("Y train dim:")
print(dim(df_y_train))
print("X test dim:")
print(dim(df_x_test))
print("Y test dim:")
print(dim(df_y_test))

# Load names for data frames
df_names <- read.csv(paste(data_path, "\\features.txt", sep = ""),
                  sep = "", header = FALSE)
df_names <- df_names$V2

names(df_x_train) <- df_names
names(df_x_test) <- df_names

# Join data test and train data frames
df_train <- cbind(df_x_train, label = df_y_train$V1)
df_test  <- cbind(df_x_test, label = df_y_test$V1)

df <- rbind(df_train, df_test)

# Save result
write.table(df, file = paste(results_path, "\\01-merged_df.txt",
                             sep = ""))

print("Step 1 completed.")