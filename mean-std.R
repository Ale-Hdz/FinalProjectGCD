# Load names for data frames
df_names <- read.csv(paste(data_path, "\\features.txt", sep = ""),
                     sep = "", header = FALSE)
df_names <- df_names$V2

# Get names that contains "mean" but not contains "Freq"
avg_indices <- grep("mean", df_names)
avg_names <- df_names[avg_indices]
freq_indices <- grep("Freq", avg_names)
avg_names <- avg_names[-freq_indices]

# Get names that contains "std"
std_indices <- grep("std", df_names)
std_names <- df_names[std_indices]

# Get filtered df
filtered_indices <- c(avg_indices, std_indices)
filtered_df <- df[,filtered_indices]

# Save results
write.table(filtered_df, file = paste(results_path, "\\02-filtered.txt",
                                      sep = ""))
print("Step 2 completed.")