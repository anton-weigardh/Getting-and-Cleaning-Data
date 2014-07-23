# Code book
@Author: Weigardh, A  
@File: CODEBOOK.md  

## Summary

Below is a description for the file tidy_data generated in the run_analysis.R script.  
For information about the script, see README.md

## Size
tidy_data has the dimension 
180 68
approximatley 219 kb as a txt file

## ID Fields
Two different columns that contain information about the participant and the task performed.

* Subject ID - The ID of the participant
* Activity - Performed Activity of the participant

## Column Labels
66 different columns containing the average of either mean or standard deviation.  
In short, these are signals in three axis, X, Y and Z.  
t indicate "time"

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

## Activity Labels
There are a total of 6 activities
* WALKING (1)
* WALKING_UPSTAIRS (2)
* WALKING_DOWNSTAIRS (3)
* SITTING (4)
* STANDING (5)
* LAYING (6)

## Subject ID
Subject ID contains the ID.  
There are a total of 30 ID's, ID is element of {1,2,...,30}

From test: {2,4,9,10,12,13,18,20,24}  
From training: {1,3,5,6,7,8,11,14,15,16,17,19,21,22,23,25,26,27,28,29,30}  

