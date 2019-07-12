---
output: 
  html_document: 
    keep_md: yes
---

### **Project Descripition** 

This project is to prepare a tidy data following the directions of the course project. 

### **Data Collection**

The data being used is from the UCI HAR Dataset.
The datasets included in this are:

* 'features.txt': Gives all of the features
* 'activity_lables.txt': Gives the activity names associated with the class labels
* 'train/X_train.txt': Training set for X
* 'train/Y_train.txt': Training set for Y
* 'test/X_train.txt': Test set for X
* 'test/Y_train.txt': Test set for Y
* 'train/subject_train.txt': Links training to the subject performing it
* 'test/subject_test.txt': Links testing to the subject performing it

### **Identifiers**

* subject: Test subject ID
* Activity: The activity being performed when measurements were taken

Activities include:

* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

### **Measurements**

* TimeBodyAccelerometer.mean.X
* TimeBodyAccelerometer.mean.Y
* TimeBodyAccelerometer.mean.Z
* TimeGravityAccelerometer.mean.X
* TimeGravityAccelerometer.mean.Y
* TimeGravityAccelerometer.mean.Z
* TimeBodyAccelerometerJerk.mean.X
* TimeBodyAccelerometerJerk.mean.Y
* TimeBodyAccelerometerJerk.mean.Z
* TimeBodyGyroscope.mean.X
* TimeBodyGyroscope.mean.Y
* TimeBodyGyroscope.mean.Z
* TimeBodyGyroscopeJerk.mean.X
* TimeBodyGyroscopeJerk.mean.Y
* TimeBodyGyroscopeJerk.mean.Z
* TimeBodyAccelerometerMagnitude.mean
* TimeGravityAccelerometerMagnitude.mean
* TimeBodyAccelerometerJerkMagnitude.mean
* TimeBodyGyroscopeMagnitude.mean
* TimeBodyGyroscopeJerkMagnitude.mean
* FrequencyBodyAccelerometer.mean.X
* FrequencyBodyAccelerometer.mean.Y
* FrequencyBodyAccelerometer.mean.Z
* FrequencyBodyAccelerometer.meanFrequency.X
* FrequencyBodyAccelerometer.meanFrequency.Y
* FrequencyBodyAccelerometer.meanFrequency.Z
* FrequencyBodyAccelerometerJerk.mean.X
* FrequencyBodyAccelerometerJerk.mean.Y
* FrequencyBodyAccelerometerJerk.mean.Z
* FrequencyBodyAccelerometerJerk.meanFrequency.X
* FrequencyBodyAccelerometerJerk.meanFrequency.Y
* FrequencyBodyAccelerometerJerk.meanFrequency.Z
* FrequencyBodyGyroscope.mean.X
* FrequencyBodyGyroscope.mean.Y
* FrequencyBodyGyroscope.mean.Z
* FrequencyBodyGyroscope.meanFrequency.X
* FrequencyBodyGyroscope.meanFrequency.Y
* FrequencyBodyGyroscope.meanFrequency.Z
* FrequencyBodyAccelerometerMagnitude.mean
* FrequencyBodyAccelerometerMagnitude.meanFrequency
* FrequencyBodyAccelerometerJerkMagnitude.mean
* FrequencyBodyAccelerometerJerkMagnitude.meanFrequency
* FrequencyBodyGyroscopeMagnitude.mean
* FrequencyBodyGyroscopeMagnitude.meanFrequency
* FrequencyBodyGyroscopeJerkMagnitude.mean
* FrequencyBodyGyroscopeJerkMagnitude.meanFrequency
* TimeBodyAccelerometer.standardDeviaton.X
* TimeBodyAccelerometer.standardDeviation.Y
* TimeBodyAccelerometer.standardDeviation.Z
* TimeGravityAccelerometer.standardDeviation.X
* TimeGravityAccelerometer.standardDeviation.Y
* TimeGravityAccelerometer.standardDeviation.Z
* TimeBodyAccelerometerJerk.standardDeviation.X
* TimeBodyAccelerometerJerk.standardDeviation.Y
* TimeBodyAccelerometerJerk.standardDeviation.Z
* TimeBodyGyroscope.standardDeviation.X
* TimeBodyGyroscope.standardDeviation.Y
* TimeBodyGyroscope.standardDeviation.Z
* TimeBodyGyroscopeJerk.standardDeviation.X
* TimeBodyGyroscopeJerk.standardDeviation.Y
* TimeBodyGyroscopeJerk.standardDeviation.Z
* TimeBodyAccelerometerMagnitude.standardDeviation
* TimeGravityAccelerometerMagnitude.standardDeviation
* TimeBodyAccelerometerJerkMagnitude.standardDeviation
* TimeBodyGyroscopeMagnitude.standardDeviation
* TimeBodyGyroscopeJerkMagnitude.standardDeviation
* FrequencyBodyAccelerometer.standardDeviation.X
* FrequencyBodyAccelerometer.standardDeviation.Y
* FrequencyBodyAccelerometer.standardDeviation.Z
* FrequencyBodyAccelerometerJerk.standardDeviation.X
* FrequencyBodyAccelerometerJerk.standardDeviation.Y
* FrequencyBodyAccelerometerJerk.standardDeviation.Z
* FrequencyBodyGyroscope.standardDeviation.X
* FrequencyBodyGyroscope.standardDeviation.Y
* FrequencyBodyGyroscope.standardDeviation.Z
* FrequencyBodyAccelerometerMagnitude.standardDeviation
* FrequencyBodyAccelerometerJerkMagnitude.standardDeviation
* FrequencyBodyGyroscopeMagnitude.standardDeviation
* FrequencyBodyGyroscopeJerkMagnitude.standardDeviation

### **Merge the training and test data to create one dataset**

* x.data: combines x.train and x.test using rbind() function
* y.data: combines y.train and y.test using rbind() function
* subject.data: combines subject.train and subject.test using rbind() function
* FullData: combines x.data, y.data, and subject.data using cbind() function

### **Extract only the measurements on mean and standard deviation for each measurement**

* MeanStd: subset of FullData that selects only the subject and code and the measurements of mean and standard deviation

### **Use descriptive activity names to name the activities in the data set**

* code column is replaced with descriptive names of what the activity is 

### **Appropriately label the data set with descriptive variable names**

* code: replaced with Activity
* Acc: replaced with Accelerometer
* Gyro: replaced with Gyroscope
* BodyBody: replaced with Body
* Mag: replaced with Magnitude
* f: replaced with Frequency
* t: replaced with Time

### **Create a second, independent tidy data set with the average of each variable for each activity and each subject**

* CleanData: summarized FullData by grouping it by subject and activity and takes the mean of each variable
* exports it to a text file








