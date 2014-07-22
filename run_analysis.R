library(plyr)
library(xlsx)

#--------------------------------------------------------------------#
  
# Import the Data - 6 files in total
    
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

# Add data together
  
  # Add the train- and the test data together
merge_data  <- rbind(train_data,test_data)

  # Sort out means and standard deviations
feat <- grep("*-mean()-*|-std()-*", features[,2])
feat2 <- grep("*-meanFreq()-*", features[,2])
feat3 <-feat[!is.element(feat,feat2)]

  # Change name on the columns
colnames(merge_data) <- features[,2]

  # Subset the data
merge_data <- merge_data[,c(feat3)]
#--------------------------------------------------------------------#

# Add Subject and Activity Data

  # Add Subject.ID and Activity together from train and data
merge_subject <-rbind(train_subject,test_subject)
merge_label <-rbind(train_label,test_label)
    
  # Set new names for two columns
colnames(merge_subject)<-"Subject.ID" 
colnames(merge_label)<-"Activity" 

  # Create a vector with the names of activites
activity <- as.vector(activity_labels[,2])

  # Rename the activites in a loop
for (i in 1:length(activity)){
  merge_label[merge_label==i] <- activity[i]
}
  # Add Subject.ID and Acctivity to the earlier data set
merge_data <- cbind(merge_subject, merge_data)
merge_data <- cbind(merge_label, merge_data)

 # Fix some labels of the variables
colnames(merge_data) <-gsub("[()]","_",names(merge_data))
colnames(merge_data) <-gsub("[-]","",names(merge_data))
colnames(merge_data) <-gsub("mean","Mean",names(merge_data))
colnames(merge_data) <-gsub("std","Std",names(merge_data))
#--------------------------------------------------------------------#

#Create a tidy set

  # Create tidy data set with means and standard deviations
tidy_data <- ddply(merge_data, .(Subject.ID,Activity), numcolwise(mean))
#--------------------------------------------------------------------#

# Write out a file

  # Write to an .xlsx-file
write.xlsx(tidy_data, file = "tidy_data.xlsx", sheetName="Sheet1",col.names=TRUE, row.names=FALSE, append=FALSE)
#--------------------------------------------------------------------#