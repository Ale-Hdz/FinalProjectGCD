# Load data of the subjects and merge
subject_train <- read.csv(paste(train_path, 
                 "\\subject_train.txt", sep = ""), sep = "", 
                 header = FALSE)
subject_test <- read.csv(paste(test_path,
                  "\\subject_test.txt", sep = ""), sep = "",
                  header = FALSE)
subject_join <- rbind(subject_train, subject_test)


# Join subject data to tidy data frame
df_subject <- cbind(df, subject=subject_join$V1)

# Group by activity and subject
df_subject <- group_by(df_subject, activity, subject)


# Take average for each group
avg_group <- summarise(df_subject, across(everything(), mean))

# Save table to file
write.table(avg_group, file = paste(results_path, "\\05-group_avg.txt",
                                    sep = ""), row.name = FALSE)


#load_df <- read.table(paste(results_path, "\\05-group_avg.txt",
#                             sep = ""), header = TRUE)
 

print("Step 5 completed.")

