
# Check if the needed packages are installed and load them

if (!require("plyr")) {
        install.packages("plyr") 
        require("plyr")}


### Download data
dir.create("gcdfp") ### gcdfp=getting and cleaning data final project
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile="gcdfp/UCI_HAR_data.zip"  
download.file(fileURL, destfile=zipfile)
unzip(zipfile, exdir="gcdfp")
setwd("gcdfp/UCI HAR Dataset")


### Read data into data frames
features <-             read.table ("features.txt",stringsAsFactors=FALSE)
activities <-           read.table ("activity_labels.txt")
training <-             read.table ("train/X_train.txt")
training_labels <-      read.table ("train/y_train.txt")
training_subject <-     read.table ("train/subject_train.txt")
test <-                 read.table ("test/X_test.txt")
test_labels <-          read.table ("test/y_test.txt")
test_subject <-         read.table ("test/subject_test.txt")
ac_labels <-            read.table ("activity_labels.txt")

### Merges the training and the test sets to create one data set.

all <-          rbind(training,test)
all_labels <-   rbind(training_labels,test_labels)
SUBJECT <-      rbind(training_subject,test_subject)

### Calculate a index vector with the columns containing "-mean()" | "-std()"

found_mean <-   grep("-mean()",features[,2], value=FALSE, fixed=TRUE)
found_std <-    grep("-std()",features[,2],value = FALSE, fixed=TRUE)

found_all <-    c(found_mean,found_std)

### Subset the data frame accordingly to extract those columns

all_xtr <- all[,found_all]

### Use the features vector to name the columns of the extracted data

colnames(all_xtr) <- features[found_all,2]
 

### Uses descriptive activity names to name the activities in the data set
### and binds the SUBJEC and ACTIVITY columns

ACTIVITY <- ac_labels[all_labels[,1],2]

all_xtr_named <- cbind(SUBJECT,ACTIVITY,all_xtr)
colnames(all_xtr_named)[1:2] <- c("SUBJECT","ACTIVITY")


### From the data set in previous step, creates a second, independent tidy data set 
### with the average of each variable for each activity and each subject

tidydata <- ddply(all_xtr_named,.(ACTIVITY,SUBJECT),colwise(mean))


### Save the tidy data

write.table (tidydata, file="../tidy_data.txt", row.name=FALSE)


  