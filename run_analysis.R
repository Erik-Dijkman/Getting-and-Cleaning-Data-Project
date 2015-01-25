# Bind together all the columns from the training group files.
train <- cbind(read.table("./train/subject_train.txt"),
               read.table("./train/y_train.txt"),
               read.table("./train/X_Train.txt")
              )
# Bind together all the columns from the test group files.
test <- cbind(read.table("./test/subject_test.txt"),
              read.table("./test/y_test.txt"),
              read.table("./test/X_Test.txt")
              )
# Bind together all the rows from the training and test group. 
my_data <- rbind(train,test)

# Create the column names for the new data set.
colnames(my_data) <- c("subject","activity",
                   as.vector(read.table("./features.txt")[,2]))

# Create a subset with only the mean and standard deviation measurements.
my_data <- subset(my_data, select= grep("mean\\(\\)|std\\(\\)|subject|activity",
                                    colnames(my_data),value=TRUE))

# Replace the codes in the activity column by activity descriptions.
activities <- read.table("./activity_labels.txt")
my_data$activity <- activities[my_data$activity,2]

# Adjustments in the variable names:
# - Remove the dashes and the brackets
# - Change mean to Mean and std to Stdev
# - Change starting t to time and starting f to frequency
# - Correct BodyBody into Body
colnames(my_data) <- gsub("-|\\(\\)","",colnames(my_data))
colnames(my_data) <- sub("mean","Mean",colnames(my_data))
colnames(my_data) <- sub("std","Stdev",colnames(my_data))
colnames(my_data) <- sub("^f","frequency",colnames(my_data))
colnames(my_data) <- sub("^t","time",colnames(my_data))
colnames(my_data) <- sub("BodyBody","Body",colnames(my_data))

# Group by each person (subject) and each activity and take the mean
# of every measurement. Create a final tidy data set. 
library(dplyr)
my_final_data <- my_data %>% 
                group_by(subject,activity) %>% 
                summarise_each(funs(mean))
