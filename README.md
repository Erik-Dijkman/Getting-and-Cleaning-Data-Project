# Getting-and-Cleaning-Data-Project

The script file *run_analysis.R* in this repository can be used to create a tidy data set from the data in the UCI HAR Dataset.

In the file *CodeBook.md* you will find information about the data and a description of all the variables in the tidy data set.

### Follow these steps to run the script ###
- Download the [zip file][1] with the data set.
- Unzip the zip file and make sure that you keep the original folder structure.
- In R (Studio) use the setwd() command to set the working directory to the UCI HAR Dataset directory where you unzipped all the files.
- Copy the file *run_analysis.R* to your local computer.
- In R (Studio) use the source() command to run the script file run_analysis.R.

### What does the script in the file *run_analysis.R* do? ###
- It binds together the files with all the measurements, subjects and activity codes and creates two data frames (*train* and *test*) for the two different subject groups.
- It binds together the rows of the two dataframes and creates the data frame *my_data*.
- It adds column names to the data frame *my_data*.
- It recreates *my_data* by extracting only the measurements on the mean and the standard deviation for each measurement.
- It replaces the activity codes by descriptive activity names.
- It makes the variable names error proof for further analysis by removing dashes and brackets.
- It puts the variable names in CamelCase format for better readabilty.
- It replaces the starting 't' in the variable names by 'time' and the starting 'f' by 'frequency'.
- It replaces the text 'BodyBody' in some of the variable names by 'Body'.
- It groups the data from *my_data* by subject and activity and takes the average of each variable. The result is assigned to a new data frame called *my_final_data*

[1]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip