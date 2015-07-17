#CodeBook

## 1) Input Data

The data used in this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[Full Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

The R script "run_analysis.R" downloads the data directly from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and decompresses it in /gcdfp folder.

## 2) Assignment

##### You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## 3) Implementation

The script, `run_analysis.R`, does the following:
* Check if the needed packages are installed and load them (*plyr*)
* Download data to /gcdfp folder
* Load the various files from the UCI dataset into R data frames
* Merges the training and the test sets to create one data set
* Calculate a index vector with the columns containing "-mean()" | "-std()" 
* Subset the data frame accordingly to extract those columns
* Use the features vector to name the columns of the extracted data
* Uses descriptive activity names to name the activities in the data set and binds the SUBJECT and ACTIVITY columns
* From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject
* Save the tidy data

## 4) Output Data

The script produces a tidy dataset with the average of each variable for each activity and each subject
* Each variable in a different column
* Each oservation in a different row
* Each register stores information about the mean value of a single kind of observations.

The output file has 180 observations (rows) and 68 variables (columns)
The final variables are:
"1" "ACTIVITY"
"2" "SUBJECT"
"3" "tBodyAcc-mean()-X"
"4" "tBodyAcc-mean()-Y"
"5" "tBodyAcc-mean()-Z"
"6" "tGravityAcc-mean()-X"
"7" "tGravityAcc-mean()-Y"
"8" "tGravityAcc-mean()-Z"
"9" "tBodyAccJerk-mean()-X"
"10" "tBodyAccJerk-mean()-Y"
"11" "tBodyAccJerk-mean()-Z"
"12" "tBodyGyro-mean()-X"
"13" "tBodyGyro-mean()-Y"
"14" "tBodyGyro-mean()-Z"
"15" "tBodyGyroJerk-mean()-X"
"16" "tBodyGyroJerk-mean()-Y"
"17" "tBodyGyroJerk-mean()-Z"
"18" "tBodyAccMag-mean()"
"19" "tGravityAccMag-mean()"
"20" "tBodyAccJerkMag-mean()"
"21" "tBodyGyroMag-mean()"
"22" "tBodyGyroJerkMag-mean()"
"23" "fBodyAcc-mean()-X"
"24" "fBodyAcc-mean()-Y"
"25" "fBodyAcc-mean()-Z"
"26" "fBodyAccJerk-mean()-X"
"27" "fBodyAccJerk-mean()-Y"
"28" "fBodyAccJerk-mean()-Z"
"29" "fBodyGyro-mean()-X"
"30" "fBodyGyro-mean()-Y"
"31" "fBodyGyro-mean()-Z"
"32" "fBodyAccMag-mean()"
"33" "fBodyBodyAccJerkMag-mean()"
"34" "fBodyBodyGyroMag-mean()"
"35" "fBodyBodyGyroJerkMag-mean()"
"36" "tBodyAcc-std()-X"
"37" "tBodyAcc-std()-Y"
"38" "tBodyAcc-std()-Z"
"39" "tGravityAcc-std()-X"
"40" "tGravityAcc-std()-Y"
"41" "tGravityAcc-std()-Z"
"42" "tBodyAccJerk-std()-X"
"43" "tBodyAccJerk-std()-Y"
"44" "tBodyAccJerk-std()-Z"
"45" "tBodyGyro-std()-X"
"46" "tBodyGyro-std()-Y"
"47" "tBodyGyro-std()-Z"
"48" "tBodyGyroJerk-std()-X"
"49" "tBodyGyroJerk-std()-Y"
"50" "tBodyGyroJerk-std()-Z"
"51" "tBodyAccMag-std()"
"52" "tGravityAccMag-std()"
"53" "tBodyAccJerkMag-std()"
"54" "tBodyGyroMag-std()"
"55" "tBodyGyroJerkMag-std()"
"56" "fBodyAcc-std()-X"
"57" "fBodyAcc-std()-Y"
"58" "fBodyAcc-std()-Z"
"59" "fBodyAccJerk-std()-X"
"60" "fBodyAccJerk-std()-Y"
"61" "fBodyAccJerk-std()-Z"
"62" "fBodyGyro-std()-X"
"63" "fBodyGyro-std()-Y"
"64" "fBodyGyro-std()-Z"
"65" "fBodyAccMag-std()"
"66" "fBodyBodyAccJerkMag-std()"
"67" "fBodyBodyGyroMag-std()"
"68" "fBodyBodyGyroJerkMag-std()"
