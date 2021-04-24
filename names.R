# Set names in data frame
names(df) <- c(df_names, "activity") 
#write.table(df, file = paste(results_path,"\\03-df_names.txt",
#                             sep = ""))
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

# Replace Acc by Acceleration
df_names <- sapply(df_names, function(x){
  sub("Acc", "Acceleration", x)
})


df_names <- as.character(df_names)

# Create unique names by adding an enumeration
repeated <- c()
new_names <- c()

for (name in df_names)
{
  new_name <- name
  repeated <- c(repeated, name)  
  i <- sum(name == repeated)
  if(i > 1)
  {
    new_name <- paste(new_name, "-", i, sep = "")
  }
  new_names <- c(new_names, new_name)
}

df_names <- new_names

# Save results
names(df) <- c(df_names, "activity") 
#write.table(df, file = paste(results_path,
#            "\\04-df_names_descriptive.txt",
#            sep = ""))
print("Step 4 completed.")