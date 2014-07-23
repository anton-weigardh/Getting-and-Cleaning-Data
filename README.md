#Description of the Script run_analysis.R
@Author: Weigardh, A  
@File: README.md  

## Summary
This document summarizes the run_analysis script.  
This script takes data and converts it into a tidy data set.  

## Original Data

Original Data can downloaded from  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Required Files
In order to run properly, the following files are required

* X_train.txt - Training set
* y_train.txt - Training labels
* subject_train.txt - Training subject

* X_test.txt - Test set
* y_test.txt - Test label
* subject_test.txt - Test subject
    
* features.txt - List of all features.
* activity_labels.txt - Links the class labels with their activity name.
 
The folder *UCI HAR Dataset*, contaning the files must be in the the working directory

## Procedure
in run_analysis.R the steps are

1) **Data import**  
    In line 17-28, data is importet into R. As mentioned earlier the data must be in the working directory.
2) **Adding data together**  
3) **Extraction of means and standard deviations**  
4) **Adding additional data, renaming**  
5) **Creation of tidy data set**  
6) **Creation of txt file of the tidy data set**  

## Result
The goal of this script is to land in a tidy data set the summarizes the human activity data.  
The resulting data frame, 'tidy_data' has the dimension 180*68. Below one can see a part tidy_data