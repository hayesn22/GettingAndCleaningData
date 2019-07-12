
#Prep
library(dplyr)



#Downloading the file
library(data.table)
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}


#Getting Data
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x.test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y.test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x.train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y.train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")


#1. Merges the training and the test sets to create one data set

#Combining individual Data
x.data <- rbind(x.test, x.train)
y.data <- rbind(y.test, y.train)
subject.data <- rbind(subject.test, subject.train)


#Combining all data
FullData <- cbind(x.data, y.data, subject.data)


#2. Extracts only the measurements on the mean and standard deviation for each measurement
MeanStd <- FullData %>% select(subject, code, contains("mean"), contains("std"))


#3. Uses descriptive activity names to name the activities in the data set
MeanStd$code <-activities[MeanStd$code, 2]


#4. Appropriately labels the data set with descriptive variable names
names(MeanStd)[2] = "Activity"
names(MeanStd)<-gsub("Acc", "Accelerometer", names(MeanStd))
names(MeanStd)<-gsub("Gyro", "Gyroscope", names(MeanStd))
names(MeanStd)<-gsub("BodyBody", "Body", names(MeanStd))
names(MeanStd)<-gsub("Mag", "Magnitude", names(MeanStd))
names(MeanStd)<-gsub("^t", "Time", names(MeanStd))
names(MeanStd)<-gsub("^f", "Frequency", names(MeanStd))
names(MeanStd)<-gsub("tBody", "Time Body", names(MeanStd))
names(MeanStd)<-gsub("-mean()", "Mean", names(MeanStd), ignore.case = TRUE)
names(MeanStd)<-gsub("-std()", "StandardDeviation", names(MeanStd), ignore.case = TRUE)
names(MeanStd)<-gsub("-freq()", "Frequency", names(MeanStd), ignore.case = TRUE)
names(MeanStd)<-gsub("angle", "Angle", names(MeanStd))
names(MeanStd)<-gsub("gravity", "Gravity", names(MeanStd))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
CleanData <- MeanStd %>%
  group_by(subject, Activity) %>%
  summarize_all(funs(mean))
write.table(CleanData, "CleanData.txt", row.name = FALSE)

