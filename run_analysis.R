## File: run_analysis.R
## Author: Weigardh, A
##
## This script returns a data set of human activity data.
##
## For a full account of the data, see 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## Below is the data for the project
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#--------------------------------------------------------------------#
library(plyr)
#--------------------------------------------------------------------#
  
## Import the Data - 8 files in total are required
    
    # Train data
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_label <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

    #Test Data
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
    
    # Read in Labels and Features
features <-read.table("UCI HAR Dataset/features.txt")
activity_labels <-read.table("UCI HAR Dataset/activity_labels.txt")
#--------------------------------------------------------------------#

## Add data together
  
  # Bind the train- and the test data together
merge_data  <- rbind(train_data,test_data)

  # Sort out means and standard deviations
feat <- grep("*-mean()-*|-std()-*", features[,2])
feat2 <- grep("*-meanFreq()-*", features[,2])
feat3 <-feat[!is.element(feat,feat2)]

  # Change name on the columns
colnames(merge_data) <- features[,2]

  # Subset the data for means and columns
merge_data <- merge_data[,c(feat3)]
#--------------------------------------------------------------------#

## Add Subject and Activity Data

  # Bind Subject.ID and Activity together from train and data
merge_subject <-rbind(train_subject,test_subject)
merge_label <-rbind(train_label,test_label)
    
  # Set new names for two columns
colnames(merge_subject)<-"Subject.ID" 
colnames(merge_label)<-"Activity" 

  # Create a vector with the names of activities
activity <- as.vector(activity_labels[,2])

  # Rename the activities in a loop
for (i in 1:length(activity)){
  merge_label[merge_label==i] <- activity[i]
}
  # Bind Subject.ID and Acctivity to the earlier data set
merge_data <- cbind(merge_subject, merge_data)
merge_data <- cbind(merge_label, merge_data)

 # Fix some labels of the variables
colnames(merge_data) <-gsub("[()]","_",names(merge_data))
colnames(merge_data) <-gsub("[-]","",names(merge_data))
colnames(merge_data) <-gsub("mean","Mean",names(merge_data))
colnames(merge_data) <-gsub("std","Std",names(merge_data))
#--------------------------------------------------------------------#

## Create a tidy set

  # Create tidy data set with average of means and standard deviations
tidy_data <- ddply(merge_data, .(Subject.ID,Activity), numcolwise(mean))
#--------------------------------------------------------------------#

## Write out the tidy data set

  # Write to an .txt-file
write.table(tidy_data, "tidy_data.txt", sep="\t")
#--------------------------------------------------------------------#
tidy_data[c(1,2,3,4,5,6), c(1,2,3,4,5,6)]

## Result
## The result from running tidy_data[c(1,2,3,4,5,6), c(1,2,3,4,5,6)] reads

#> tidy_data[c(1,2,3,4,5,6), c(1,2,3,4,5,6)]
#Subject.ID           Activity tBodyAccMean__X tBodyAccMean__Y tBodyAccMean__Z tBodyAccStd__X
#1          1             LAYING       0.2215982    -0.040513953      -0.1132036    -0.92805647
#2          1            SITTING       0.2612376    -0.001308288      -0.1045442    -0.97722901
#3          1           STANDING       0.2789176    -0.016137590      -0.1106018    -0.99575990
#4          1            WALKING       0.2773308    -0.017383819      -0.1111481    -0.28374026
#5          1 WALKING_DOWNSTAIRS       0.2891883    -0.009918505      -0.1075662     0.03003534
#6          1   WALKING_UPSTAIRS       0.2554617    -0.023953149      -0.0973020    -0.35470803