### Files

CodeBook.md

* Describles the data, variables, and any work done in order to clean the data

Analysis.R

* loads dyplr package
* Downloads UCI Har Dataset, locally stores it, then unzips the file
* loads necessary data
* Merges the training and test data to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses decriptive activity names to namethe activities in the data set
* Appropriately labels the data set with descriptive variable names
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject
* Exports final CleanData.txt

CleanData.txt
* final exported data set from Analysis.R

