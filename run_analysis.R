# Read all input files into R data frame
library("plyr")
library("dplyr")
library("reshape")
library("reshape2")

setwd("C:/Users/Owner/Documents/Coursera_Getting_And_Cleaning_Data/data")
# Read X files
Train <- read.table("./train/X_train.txt", header = TRUE)
Test <- read.table("./test/X_test.txt", header = TRUE)

# read Y files
activityTrain <- read.table("./train/Y_train.txt", header = TRUE)
activityTest <- read.table("./test/Y_test.txt", header = TRUE)

# read subject files
subjectTrain <- read.table("./train/subject_train.txt", header = TRUE)
subjectTest <- read.table("./test/subject_test.txt", header = TRUE)

#read activity lables
activity_labels <- read.table("./activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)

#making labels for X files
features <- read.delim("./features.txt", header = FALSE,sep = " ",colClasses = c("NULL",NA))
labels <- matrix(unlist(features), ncol = 1)
x_labels <- make.names(labels, unique = TRUE, allow_ = TRUE)

#rename columns of X files using label file
colnames(Train) <- x_labels
colnames(Test) <- x_labels

#rename column of avtivity files
activityTrain <- rename(activityTrain, c("X5" = "activity"))
activityTest <- rename(activityTest, c("X5" = "activity"))

activity_labels <- rename(activity_labels, c("V1" = "activity", "V2" = "activityName"))

#rename column of subject files
subjectTrain <- rename(subjectTrain, c("X1" = "subject"))
subjectTest <- rename(subjectTest, c("X2" = "subject"))

#combine data frame by columns
trainDS <- cbind(subjectTrain, activityTrain, Train)
testDS <- cbind(subjectTest, activityTest, Test)

#append train and test data frames
train_testDS <- rbind(trainDS, testDS)

#select mean and standard deviation data
combinedDS <- select(train_testDS,subject, activity, matches('mean|std'), -matches('meanFreq|gravityMean|tBodyAccMean|tBodyAccJerkMean|tBodyGyroMean|tBodyGyroJerkMean'))

#merge with the activity_labels file
mergedDS <- merge(combinedDS, activity_labels, by.x = "activity", by.y = "activity", all=TRUE)

#reshaping data
mydata <- melt(mergedDS, id=c("subject", "activity", "activityName"), na.rm=TRUE)

#calculate average mean and standard deviation features
result <- dcast(mydata, subject + activity + activityName ~ variable, fun.aggregate = mean, na.rm = TRUE)

#remove the activity number column
result <- select(result, -activity)

#create readable feature names
featureName <- names(result)

featureName <- gsub("Acc.mean...", "AccelerometerMean", featureName)
featureName <- gsub("Acc.std...", "AccelerometerStandardDeviation", featureName)
featureName <- gsub("AccJerk.mean...","AccelerometerJerkMean", featureName)
featureName <- gsub("AccJerk.std...","AccelerometerJerkStandardDeviation", featureName)
featureName <- gsub("Gyro.mean...","GyroscopeMean", featureName)
featureName <- gsub("Gyro.std...","GyroscopeStandardDeviation", featureName)
featureName <- gsub("GyroJerk.mean...","GyroscopeJerkMean", featureName)
featureName <- gsub("GyroJerk.std...","GyroscopeJerkStandardDeviation", featureName)
featureName <- gsub("AccMag.mean..","AccelerometerMagnitudeMean", featureName)
featureName <- gsub("AccMag.std..","AccelerometerMagnitudeStandardDeviation", featureName)
featureName <- gsub("AccJerkMag.mean..","AccelerometerJerkMagnitudeMean", featureName)
featureName <- gsub("AccJerkMag.std..","AccelerometerJerkMagnitudeStandardDeviation", featureName)
featureName <- gsub("GyroMag.mean..","GyroscopeMagnitudeMean", featureName)
featureName <- gsub("GyroMag.std..","GyroscopeMagnitudeStandardDeviation", featureName)
featureName <- gsub("GyroJerkMag.mean..","GyroscopeJerkMagnitudeMean", featureName)
featureName <- gsub("GyroJerkMag.std..","GyroscopeJerkMagnitudeStandardDeviation", featureName)

#apply to column name
colnames(result) <- featureName

#export data to a file
write.table(result, "./tidydata.txt", sep="\t", row.name=FALSE)