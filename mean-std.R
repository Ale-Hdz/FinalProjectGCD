# Get names that contains "mean" but not contains "Freq"
avg_indices <- grep("mean", df_names)
avg_names <- df_names[avg_indices]
freq_indices <- grep("Freq", avg_names)
avg_names <- avg_names[-freq_indices]

# Get names that contains "std"
std_indices <- grep(std_str, df_names)
std_names <- df_names[std_indices]

# Get filtered df
filtered_names <- c(avg_names, std_names)
filtered_df <- df[,filtered_names]

# Save results
write.table(filtered_df, file = paste(results_path, "\\02-filtered.txt",
                                      sep = ""))
print("Step 2 completed.")