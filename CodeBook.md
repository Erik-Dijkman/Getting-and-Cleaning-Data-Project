# Code book for the tidy UCI HAR Dataset #


## Original data ##

A full description is available at the [site][1] where the data was obtained.  
You can find the data in this [zip file][2].  

From the *Readme.txt* file that comes with the zip file:  
____________________  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:

Use of this dataset in publications must be acknowledged by referencing the following publication {1}

{1} Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
_____________________________  

## Original vs Tidy data set ##

For the assignment it was asked to deliver a tidy  data set with only the mean and standard deviation variables. For this reason I decided to select only the *mean()* and *std()* variables and to leave out the *meanFreq()* and *angle()*.  
In the tidy data set all the measurements are averaged and grouped by subject (a person) and by activity. In the original set each subject for each activity had several rows of data.

## Overview of the variables in the tidy data set ##

**subject**  
SubjectID for the person who performed the activity for each window sample. Its range is from 1 to 30.

 **activity**  
The activity performed by the person (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 
**timeBodyAccMeanX**  
**timeBodyAccMeanY**  
**timeBodyAccMeanZ**  
The average of means of 3-axial body acceleration signals (time domain).  

**timeBodyAccStdevX**  
**timeBodyAccStdevY**  
**timeBodyAccStdevZ**  
The average of standard deviations of 3-axial body acceleration signals (time domain).  

**timeGravityAccMeanX**  
**timeGravityAccMeanY**  
**timeGravityAccMeanZ**  
The average of means of 3-axial gravity acceleration signals (time domain).  

**timeGravityAccStdevX**  
**timeGravityAccStdevY**  
**timeGravityAccStdevZ**  
The average of standard deviations of 3-axial gravity acceleration signals (time domain).  

**timeBodyAccJerkMeanX**  
**timeBodyAccJerkMeanY**  
**timeBodyAccJerkMeanZ**  
The average of means of 3-axial body acceleration jerk signals (time domain).  

**timeBodyAccJerkStdevX**  
**timeBodyAccJerkStdevY**  
**timeBodyAccJerkStdevZ**  
The average of standard deviations of 3-axial body acceleration jerk signals (time domain).  

**timeBodyGyroMeanX**  
**timeBodyGyroMeanY**  
**timeBodyGyroMeanZ**  
The average of means of 3-axial body gyroscope signals (time domain).  

**timeBodyGyroStdevX**  
**timeBodyGyroStdevY**  
**timeBodyGyroStdevZ**  
The average of standard deviations of 3-axial body gyroscope signals (time domain).  

**timeBodyGyroJerkMeanX**  
**timeBodyGyroJerkMeanY**  
**timeBodyGyroJerkMeanZ**  
The average of means of 3-axial body gyroscope jerk signals (time domain).  

**timeBodyGyroJerkStdevX**  
**timeBodyGyroJerkStdevY**  
**timeBodyGyroJerkStdevZ**  
The average of standard deviations of 3-axial body gyroscope jerk signals (time domain).  

**timeBodyAccMagMean**  
The average of means of body acceleration magnitude signals (time domain).  

**timeBodyAccMagStdev**  
The average of standard deviations of body acceleration magnitude signals (time domain).  

**timeGravityAccMagMean**  
The average of means of gravity acceleration magnitude signals (time domain).  

**timeGravityAccMagStdev**  
The average of standard deviations of gravity acceleration magnitude signals (time domain).  

**timeBodyAccJerkMagMean**  
The average of means of body acceleration jerk magnitude signals (time domain).  

**timeBodyAccJerkMagStdev**  
The average of standard deviations of body acceleration jerk magnitude signals (time domain).  

**timeBodyGyroMagMean**  
The average of means of 3-axial body gyroscope magnitude signals (time domain).  

**timeBodyGyroMagStdev**  
The average of standard deviations of 3-axial body gyroscope magnitude signals (time domain).  

**timeBodyGyroJerkMagMean**  
The average of means of 3-axial body gyroscope jerk magnitude signals (time domain).  

**timeBodyGyroJerkMagStdev**  
The average of standard deviations of 3-axial body gyroscope jerk magnitude signals (time domain).  

**frequencyBodyAccMeanX**  
**frequencyBodyAccMeanY**  
**frequencyBodyAccMeanZ**  
The average of means of 3-axial body acceleration signals (frequency domain).  

**frequencyBodyAccStdevX**  
**frequencyBodyAccStdevY**  
**frequencyBodyAccStdevZ**  
The average of standard deviations of 3-axial body acceleration signals (frequency domain).  

**frequencyBodyAccJerkMeanX**  
**frequencyBodyAccJerkMeanY**  
**frequencyBodyAccJerkMeanZ**  
The average of means of 3-axial body acceleration jerk signals (frequency domain).  

**frequencyBodyAccJerkStdevX**  
**frequencyBodyAccJerkStdevY**  
**frequencyBodyAccJerkStdevZ**  
The average of standard deviations of 3-axial body acceleration jerk signals (frequency domain).  

**frequencyBodyGyroMeanX**  
**frequencyBodyGyroMeanY**  
**frequencyBodyGyroMeanZ**  
The average of means of 3-axial body gyroscope signals (frequency domain).  

**frequencyBodyGyroStdevX**  
**frequencyBodyGyroStdevY**  
**frequencyBodyGyroStdevZ**  
The average of standard deviations of 3-axial body gyroscope signals (frequency domain).  

**frequencyBodyAccMagMean**  
The average of means of 3-axial body acceleration magnitude signals (frequency domain).  

**frequencyBodyAccMagStdev**  
The average of standard deviations of 3-axial body acceleration magnitude signals (frequency domain).  
  
**frequencyBodyAccJerkMagMean**  
The average of means of 3-axial body acceleration jerk magnitude signals (frequency domain).  
  
**frequencyBodyAccJerkMagStdev**  
The average of standard deviations of 3-axial body acceleration jerk magnitude signals (frequency domain).  

**frequencyBodyGyroMagMean**  
The average of means of 3-axial body gyroscope magnitude signals (frequency domain).  

**frequencyBodyGyroMagStdev**  
The average of standard deviations  of 3-axial body gyroscope magnitude signals (frequency domain).  

**frequencyBodyGyroJerkMagMean**  
The average of means of 3-axial body gyroscope jerk magnitude signals (frequency domain).  

**frequencyBodyGyroJerkMagStdev**  
The average of standard deviations  of 3-axial body gyroscope jerk magnitude signals (frequency domain).  

[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
[2]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
