# CODEBOOK
@Author: Weigardh, A  
@File: `CODEBOOK.md`  

## Summary

Below is a description for the data in  `tidy_data` generated in the `run_analysis.R script`.  
For information about the script, see `README.md` or the script `run_analysis.R`  
[README](https://github.com/anton-weigardh/Getting-and-Cleaning-Data/blob/master/README.md)   
[run_analysis.R](https://github.com/anton-weigardh/Getting-and-Cleaning-Data/blob/master/run_analysis.R)    

## Original Data
The original data is the *Human Activity Recognition Using Smartphones Dataset*  

Original Data can downloaded from  
[Original Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  

Description can be found at 
[Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

### Description
Taken from the previous link, the data contains the following.  

*"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."*

*"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."*

*"For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment"*

Features are normalized and bounded within [-1,1]

## Size
`tidy_data` has the dimension 
180 68  
approximately 219 KB as a txt file

The original data set was of the dimension  
10299 563

## Transformations
The original data frames has been reshaped so that just a subset of the data remains.
In [README](https://github.com/anton-weigardh/Getting-and-Cleaning-Data/blob/master/README.md), the reader will learn what happens in each step. Many of the features has been removed in `tidy_data` and several of the descriptive names has been changed.

### Required Files
The `tidy_data` data frame is created from the following files

* `X_train.txt` - Training set
* `y_train.txt` - Training labels
* `subject_train.txt` - Training subject
* `X_test.txt` - Test set
* `y_test.txt` - Test label
* `subject_test.txt` - Test subject
* `features.txt` - List of all features.
* `activity_labels.txt` - Links the class labels with their activity name.

## ID Fields
Two different columns that contain information about the participant and the task performed.

* Subject ID - The ID of the participant  
* Activity - Performed Activity of the participant
These are from the files (`subject_train.txt` , `subject_test.txt`) for ID and  (`X_train.txt` and `y_train.txt`) for Activity 

## Column Feature Labels
66 different columns containing the average of either mean or standard deviation.  
In short, these are signals in three axis, X, Y and Z.  
* t indicate "time"  
* acc indicate accelerometer
* gyro indicate gyroscope
* Std indicate standard deviation

Column# Column Name

* 1  Subject.ID
* 2	Activity
* 3	tBodyAccMean__X
* 4	tBodyAccMean__Y
* 5	tBodyAccMean__Z
* 6	tBodyAccStd__X
* 7	tBodyAccStd__Y
* 8	tBodyAccStd__Z
* 9	tGravityAccMean__X
* 10	tGravityAccMean__Y
* 11	tGravityAccMean__Z
* 12	tGravityAccStd__X
* 13	tGravityAccStd__Y
* 14	tGravityAccStd__Z
* 15	tBodyAccJerkMean__X
* 16	tBodyAccJerkMean__Y
* 17	tBodyAccJerkMean__Z
* 18	tBodyAccJerkStd__X
* 19	tBodyAccJerkStd__Y
* 20	tBodyAccJerkStd__Z
* 21	tBodyGyroMean__X
* 22	tBodyGyroMean__Y
* 23	tBodyGyroMean__Z
* 24	tBodyGyroStd__X
* 25	tBodyGyroStd__Y
* 26	tBodyGyroStd__Z
* 27	tBodyGyroJerkMean__X
* 28	tBodyGyroJerkMean__Y
* 29	tBodyGyroJerkMean__Z
* 30	tBodyGyroJerkStd__X
* 31	tBodyGyroJerkStd__Y
* 32	tBodyGyroJerkStd__Z
* 33	tBodyAccMagMean__
* 34	tBodyAccMagStd__
* 35	tGravityAccMagMean__
* 36	tGravityAccMagStd__
* 37	tBodyAccJerkMagMean__
* 38	tBodyAccJerkMagStd__
* 39	tBodyGyroMagMean__
* 40	tBodyGyroMagStd__
* 41	tBodyGyroJerkMagMean__
* 42	tBodyGyroJerkMagStd__
* 43	fBodyAccMean__X
* 44	fBodyAccMean__Y
* 45	fBodyAccMean__Z
* 46	fBodyAccStd__X
* 47	fBodyAccStd__Y
* 48	fBodyAccStd__Z
* 49	fBodyAccJerkMean__X
* 50	fBodyAccJerkMean__Y
* 51	fBodyAccJerkMean__Z
* 52	fBodyAccJerkStd__X
* 53	fBodyAccJerkStd__Y
* 54	fBodyAccJerkStd__Z
* 55	fBodyGyroMean__X
* 56	fBodyGyroMean__Y
* 57	fBodyGyroMean__Z
* 58	fBodyGyroStd__X
* 59	fBodyGyroStd__Y
* 60	fBodyGyroStd__Z
* 61	fBodyAccMagMean__
* 62	fBodyAccMagStd__
* 63	fBodyBodyAccJerkMagMean__
* 64	fBodyBodyAccJerkMagStd__
* 65	fBodyBodyGyroMagMean__
* 66	fBodyBodyGyroMagStd__
* 67	fBodyBodyGyroJerkMagMean__
* 68	fBodyBodyGyroJerkMagStd__

In the original data set, there were 561 different features (strings), all with different names.  
The corresponding file is `features.txt`.   
The elements inside of all features are numerical. As said earlier, they are bounded withing [-1,1]

## Activity Labels
There are a total of 6 activities
* WALKING (1)
* WALKING_UPSTAIRS (2)
* WALKING_DOWNSTAIRS (3)
* SITTING (4)
* STANDING (5)
* LAYING (6)  

Originally, the labels were numeric (1-6). They are now of the type character.    
The corresponding file is `activity_labels.txt`.

## Subject ID
Subject ID contains the ID of each subject in the experiment.  
There are a total of 30 ID's (integers), ID is element of {1,2,...,30}

From test: {2,4,9,10,12,13,18,20,24}  
From training: {1,3,5,6,7,8,11,14,15,16,17,19,21,22,23,25,26,27,28,29,30}  

No alterations has been made compared to the original data.
