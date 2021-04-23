# Set names in data frame
names(df) <- c(df_names, "action") 
write.table(df, file = paste(results_path,"\\03-df_names.txt",
                             sep = ""))
print("Step 3 completed.")

# Replace t by time
df_names <- sapply(df_names, function(x){
  sub("tB","timeB", x)
})
df_names <- sapply(df_names, function(x){
  sub("tG","timeG", x)
})

# Replace f by freq
df_names <- sapply(df_names, function(x){
  sub("fBody", "freqBody", x)
})

# Replace mad by median
df_names <- sapply(df_names, function(x){
  sub("mad", "median", x)
})

df_names <- as.character(df_names)

# Save results
names(df) <- c(df_names, "action") 
write.table(df, file = paste(results_path,
            "\\04-df_names_descriptive.txt",
            sep = ""))
print("Step 4 completed.")