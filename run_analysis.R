## Merges the training and the test sets to create one data set.
# load data files
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
activity_labels <- read.table("./activity_labels.txt")

# merge activities
merged_activities <- rbind(y_train, y_test)

# merge data
x_merged <- rbind(x_train, x_test)
x_merged <- cbind(merged_activities, x_merged)

# Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
x_merged_mean_std <- x_merged[c(1:7)]

# Uses descriptive activity names to name the activities in the data set
x_merged_mean_std$V1 <- activity_labels$V2[match(x_merged_mean_std$V1, activity_labels$V1)]

# Appropriately labels the data set with descriptive variable names.
colnames(x_merged_mean_std) <- c("Activity", "mean_X", "mean_Y", "mean_Z", "std_X", "std_Y", "std_Z" )

# Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject.

# load subjects
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")

# combine the rows and set column name
subjects <- rbind(subject_train, subject_test)
colnames(subjects) <- c("Subject")

# add column to x_merged_mean_std
tidy <- cbind(subjects, x_merged_mean_std)

# do aggregation
aggregated_data <-aggregate(tidy[c(3:8)], by=list(Activity=tidy$Activity, Subject=tidy$Subject), FUN=mean)
colnames(aggregated_data) <- c("Activity", "Subject", "mean.mean_X", "mean.mean_Y", "mean.mean_Z", "mean.std_X", "mean.std_Y", "mean.std_Z")


# wrtie out data
write.table(aggregated_data, file = "tidy.txt", row.name = FALSE)

