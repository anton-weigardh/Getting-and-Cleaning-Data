#Description of the script `run_analysis.R`
@Author: Weigardh, A  
@File: `README.md`  

## Summary
This document summarizes the `run_analysis.R` script.  
This script takes data and converts it into a tidy data set.  

## Original Data

Original Data can downloaded from  
[Original Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  

Description can be found at 
[Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Taken from the previous link, the data contains the following.  

*"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."* 

## Required Files
In order to run properly, the following files are required

* `X_train.txt` - Training set
* `y_train.txt` - Training labels
* `subject_train.txt` - Training subject

* `X_test.txt` - Test set
* `y_test.txt` - Test label
* `subject_test.txt` - Test subject
    
* `features.txt` - List of all features.
* `activity_labels.txt` - Links the class labels with their activity name.
 
The folder *UCI HAR Dataset*, containing the files must be in the the working directory.
In this script, the `plyr-package` is used. Once the working directory is sat and packages are installed, source `run_analysis.R`.  

## Goal
The goal is to create a tidy data set that can be investigated further.     
First of, a tidy data set `merge_data`, will be created.  
Secondly, a tidy data set, `tidy_data`, containing the average of means and standard deviation for each Subject ID, will be created.

## Procedure
In `run_analysis.R` the steps performed are

1) **Data import**  
    In line 17-28, data is imported into R. As mentioned earlier the data must be in the working directory.  
2) **Adding data together**  
    In line 34, a data frame, `merge_data` with combined data is created.  
3) **Extraction of means and standard deviations**  
    Line 36-45 sorts out the means and standard deviations.      
4) **Adding additional data, descriptive renaming**  
    In line 51-73 Activity Data and Subject ID is added.  
    Labels of the columns are changed and some clean up is performed.  
5) **Creation of tidy data set**  
    In line 79, a tidy data set, `tidy_data` with averages of means and standard deviation is created.    
    Now there are 68 different features.   
6) **Creation of txt file of the tidy data set**    
    Finally, in line 85, a file is written to the current directory, i.e. `tidy_data.csv`.  
    
### CODEBOOK
For a description about the variables, please see CODEBOOK.md  
[CODEBOOK](https://github.com/anton-weigardh/Getting-and-Cleaning-Data/blob/master/CODEBOOK.md)

### Result
The goal of this script is to land in a tidy data set the summarizes the human activity data.  
The resulting data frame, `tidy_data` has the dimension 180*68. Below one can see a part `tidy_data`

    > tidy_data[c(1,2,3,4,5,6), c(1,2,3,4,5,6)]  
    Subject.ID           Activity tBodyAccMean__X tBodyAccMean__Y tBodyAccMean__Z tBodyAccStd__X  
    1          1             LAYING       0.2215982    -0.040513953      -0.1132036    -0.92805647  
    2          1            SITTING       0.2612376    -0.001308288      -0.1045442    -0.97722901  
    3          1           STANDING       0.2789176    -0.016137590      -0.1106018    -0.99575990  
    4          1            WALKING       0.2773308    -0.017383819      -0.1111481    -0.28374026    
    5          1 WALKING_DOWNSTAIRS       0.2891883    -0.009918505      -0.1075662     0.03003534  
    6          1   WALKING_UPSTAIRS       0.2554617    -0.023953149      -0.0973020    -0.35470803  
  
For output from `merge_data`, the reader is invited to try out the script.  

The script takes about 45 seconds to run on a standard computer.

### Version used
> version
               _                           
platform       x86_64-w64-mingw32          
arch           x86_64                      
os             mingw32                     
system         x86_64, mingw32             
status                                     
major          3                           
minor          1.0                         
year           2014                        
month          04                          
day            10                          
svn rev        65387                       
language       R                           
version.string R version 3.1.0 (2014-04-10)
nickname       Spring Dance