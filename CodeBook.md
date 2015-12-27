## tidydata	
Human Activity Recognition Smartphones Average mean and standard deviation of sensor signals

### Description

This dataset contains 68 variables that summarise the result of test data. There are two identifiers. subject - ID of test subjects. activityName - the name of activities were performed during the test

### Usage

data("tidydata")

### Format

A data frame with 180 observations on the following 68 variables.

subject
a numeric vector

activityName
a factor with levels LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

tBodyAccelerometerMeanX
a numeric vector

tBodyAccelerometerMeanY
a numeric vector

tBodyAccelerometerMeanZ
a numeric vector

tBodyAccelerometerStandardDeviationX
a numeric vector

tBodyAccelerometerStandardDeviationY
a numeric vector

tBodyAccelerometerStandardDeviationZ
a numeric vector

tGravityAccelerometerMeanX
a numeric vector

tGravityAccelerometerMeanY
a numeric vector

tGravityAccelerometerMeanZ
a numeric vector

tGravityAccelerometerStandardDeviationX
a numeric vector

tGravityAccelerometerStandardDeviationY
a numeric vector

tGravityAccelerometerStandardDeviationZ
a numeric vector

tBodyAccelerometerJerkMeanX
a numeric vector

tBodyAccelerometerJerkMeanY
a numeric vector

tBodyAccelerometerJerkMeanZ
a numeric vector

tBodyAccelerometerJerkStandardDeviationX
a numeric vector

tBodyAccelerometerJerkStandardDeviationY
a numeric vector

tBodyAccelerometerJerkStandardDeviationZ
a numeric vector

tBodyGyroscopeMeanX
a numeric vector

tBodyGyroscopeMeanY
a numeric vector

tBodyGyroscopeMeanZ
a numeric vector

tBodyGyroscopeStandardDeviationX
a numeric vector

tBodyGyroscopeStandardDeviationY
a numeric vector

tBodyGyroscopeStandardDeviationZ
a numeric vector

tBodyGyroscopeJerkMeanX
a numeric vector

tBodyGyroscopeJerkMeanY
a numeric vector

tBodyGyroscopeJerkMeanZ
a numeric vector

tBodyGyroscopeJerkStandardDeviationX
a numeric vector

tBodyGyroscopeJerkStandardDeviationY
a numeric vector

tBodyGyroscopeJerkStandardDeviationZ
a numeric vector

tBodyAccelerometerMagnitudeMean
a numeric vector

tBodyAccelerometerMagnitudeStandardDeviation
a numeric vector

tGravityAccelerometerMagnitudeMean
a numeric vector

tGravityAccelerometerMagnitudeStandardDeviation
a numeric vector

tBodyAccelerometerJerkMagnitudeMean
a numeric vector

tBodyAccelerometerJerkMagnitudeStandardDeviation
a numeric vector

tBodyGyroscopeMagnitudeMean
a numeric vector

tBodyGyroscopeMagnitudeStandardDeviation
a numeric vector

tBodyGyroscopeJerkMagnitudeMean
a numeric vector

tBodyGyroscopeJerkMagnitudeStandardDeviation
a numeric vector

fBodyAccelerometerMeanX
a numeric vector

fBodyAccelerometerMeanY
a numeric vector

fBodyAccelerometerMeanZ
a numeric vector

fBodyAccelerometerStandardDeviationX
a numeric vector

fBodyAccelerometerStandardDeviationY
a numeric vector

fBodyAccelerometerStandardDeviationZ
a numeric vector

fBodyAccelerometerJerkMeanX
a numeric vector

fBodyAccelerometerJerkMeanY
a numeric vector

fBodyAccelerometerJerkMeanZ
a numeric vector

fBodyAccelerometerJerkStandardDeviationX
a numeric vector

fBodyAccelerometerJerkStandardDeviationY
a numeric vector

fBodyAccelerometerJerkStandardDeviationZ
a numeric vector

fBodyGyroscopeMeanX
a numeric vector

fBodyGyroscopeMeanY
a numeric vector

fBodyGyroscopeMeanZ
a numeric vector

fBodyGyroscopeStandardDeviationX
a numeric vector

fBodyGyroscopeStandardDeviationY
a numeric vector

fBodyGyroscopeStandardDeviationZ
a numeric vector

fBodyAccelerometerMagnitudeMean
a numeric vector

fBodyAccelerometerMagnitudeStandardDeviation
a numeric vector

fBodyBodyAccelerometerJerkMagnitudeMean
a numeric vector

fBodyBodyAccelerometerJerkMagnitudeStandardDeviation
a numeric vector

fBodyBodyGyroscopeMagnitudeMean
a numeric vector

fBodyBodyGyroscopeMagnitudeStandardDeviation
a numeric vector

fBodyBodyGyroscopeJerkMagnitudeMean
a numeric vector

fBodyBodyGyroscopeJerkMagnitudeStandardDeviation
a numeric vector

### Details

The column name pefix with letter t and f. t means time f means frequency

subject Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

### Source

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### References

https://class.coursera.org/getdata-035/human_grading/view/courses/975119/assessments/3/submissions

### Examples

data(tidydata)

str(tidydata) ; plot(tidydata) ...
