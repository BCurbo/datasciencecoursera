

# Getting and Cleaning Data
# Course Project
#
# One of the most exciting areas in all of data science right now is wearable computing - 
# see for example this article . Companies like Fitbit, Nike, and Jawbone Up 
# are racing to develop the most advanced algorithms to attract new users. 
# The data linked to from the course website represent data collected from 
# the accelerometers from the Samsung Galaxy S smartphone. A full description
# is available at the site where the data was obtained: 

# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#Here are the data for the project: 

# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the
#    average of each variable for each activity and each subject.


library(dplyr)
getwd()

# [1] "/Users/bruce.curbo/Documents/CBC Documents MAC/Coursera/Getting and Cleaning Data/Course Project"
 
# Read in the subject_test.txt data, this creates a data.frame

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",sep=" ") 

## ========== Read in all the files

# Read in the activity_labls.txt data, this creates a data.frame

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",sep=" ") 
colnames(activity_labels) <- c("Activity.Num","Activity.Name")

#  read in subject_test and subject_train files

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

colnames(subject_test) <- "Subject.Num"
colnames(subject_train) <- "Subject.Num"

#  read in the features file. This will be the column names of the X_test_train data

features <- read.table("./UCI HAR Dataset/features.txt")

colnames(features) <-  c("Feature.Num","Feature.Name")


# Read in the X_test.txt and X_train.txt data, this creates a data.frame

X_test  <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

 
# Read in the Y_test and Y_train.txt data
# Y_train and Y_test contain the activity performed (walking, running, etc)
#  whose description is defined in the the activity_labels.txt file

Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt",fill=TRUE,sep=" ") 
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt",fill=TRUE,sep=" ") 

colnames(Y_test)  <- "Activity.Num"
colnames(Y_train) <- "Activity.Num"

# combine the Subject and Activity data with the X_Test data

X_test <- cbind(X_test,subject_test)
X_test <- cbind(X_test,Y_test)

# do the same for X_Train data (Combine subject and Activity

X_train <- cbind(X_train,subject_train)
X_train <- cbind(X_train,Y_train)


colnames(Y_test)  <- "Activity.Num1"
colnames(Y_train) <- "Activity.Num1"

# add the activity Description  to the X_test and X_train dfs

X_test1  <- merge(X_test,activity_labels,by.x = "Activity.Num",by.y= "Activity.Num",all=FALSE)
X_train1  <- merge(X_train,activity_labels,by.x = "Activity.Num",by.y= "Activity.Num",all=FALSE)

# add the activity Description to the X_test and X_train df

## ========== Add the columns to the individual data.frames
 

#  =========== Combine the test and train data frames

# merge the  X_test and X_train data

X_test_train <- X_test1
X_test_train <- rbind(X_test_train,X_train1)
 

## ===========================================
#   Part 2  - Pull out the columns with mean or Std
## ===========================================

X_data  <- select (X_test_train,V1:V6,V42:V46,V81:V86,V121:V126,V161:V166,V201:V202,
	V214:V215,V227:V228,V240:V241,V253:V254,V266:V271,V294:V296,V345:V350,
	V373:V375,V424:V429,V452:V454,V503:V504,V513,V516:V517,V526,V529:V530,
	V539,V542:V543,V552,V555:V561,Subject.Num,Activity.Name)

# Establish the column names

names(X_data) <- c(
"t.Body.Acc.mean.X",
"t.Body.Acc.mean.Y",
"t.Body.Acc.mean.Z",
"t.Body.Acc.std.X",
"t.Body.Acc.std.Y",
"t.Body.Acc.std.Z",
"t.Gravity.Acc.mean.Y",
"t.Gravity.Acc.mean.Z",
"t.Gravity.Acc.Std.X",
"t.Gravity.Acc.Std.Y",
"t.Gravity.Acc.Std.Z",
"t.Body.Acc.Jerk.mean.X",
"t.Body.Acc.Jerk.mean.Y",
"t.Body.Acc.Jerk.mean.Z",
"t.Body.Acc.Jerk.std.X",
"t.Body.Acc.Jerk.std.Y",
"t.Body.Acc.Jerk.std.Z",
"t.Body.Gyro.mean.X",
"t.Body.Gyro.mean.Y",
"t.Body.Gyro.mean.Z",
"t.Body.Gyro.std.X",
"t.Body.Gyro.std.Y",
"t.Body.Gyro.std.Z",
"t.Body.Gyro.Jerk.mean.X",
"t.Body.Gyro.Jerk.mean.Y",
"t.Body.Gyro.Jerk.mean.Z",
"t.Body.Gyro.Jerk.std.X",
"t.Body.Gyro.Jerk.std.Y",
"t.Body.Gyro.Jerk.std.Z",
"t.Body.Acc.Mag.mean",
"t.Body.Acc.Mag.std",
"t.Gravity.Acc.Mag.mean",
"t.Gravity.Acc.Mag.std",
"t.Body.Acc.Jerk.Mag.mean",
"t.Body.Acc.Jerk.Mag.std",
"t.Body.Gyro.Mag.mean",
"t.Body.Gyro.Mag.std",
"t.Body.Gyro.Jerk.Mag.mean",
"t.Body.Gyro.Jerk.Mag.std",
"f.Body.Acc.mean.X",
"f.Body.Acc.mean.Y",
"f.Body.Acc.mean.Z",
"f.Body.Acc.Std.X",
"f.Body.Acc.Std.Y",
"f.Body.Acc.Std.Z",
"f.Body.Acc.mean.Freg.X",
"f.Body.Acc.mean.Freg.Y",
"f.Body.Acc.mean.Freg.Z",
"f.Body.Acc.Jerk.mean.X",
"f.Body.Acc.Jerk.mean.Y",
"f.Body.Acc.Jerk.mean.Z",
"f.Body.Acc.Jerk.std.X",
"f.Body.Acc.Jerk.std.Y",
"f.Body.Acc.Jerk.std.Z",
"f.Body.Acc.Jerk.mean.Freg.X",
"f.Body.Acc.Jerk.mean.Freg.Y",
"f.Body.Acc.Jerk.mean.Freg.Z",
"f.Body.Gyro.mean.X",
"f.Body.Gyro.mean.Y",
"f.Body.Gyro.mean.Z",
"f.Body.Gyro.std.X",
"f.Body.Gyro.std.Y",
"f.Body.Gyro.std.Z",
"f.Body.Gyro.mean.Freg.X",
"f.Body.Gyro.mean.Freg.Y",
"f.Body.Gyro.mean.Freg.Z",
"f.Body.Acc.Mag.mean",
"f.Body.Acc.Mag.std",
"f.Body.Acc.Mag.mean.Freg",
"f.Body.Body.Acc.Jerk.Mag.mean",
"f.Body.Body.Acc.Jerk.Mag.std",
"f.Body.Body.Acc.Jerk.Mag.mean.Freg",
"f.Body.Body.Gyro.Mag.mean",
"f.Body.Body.Gyro.Mag.std",
"f.Body.Body.Gyro.Mag.mean.Freg",
"f.Body.Body.Gyro.Jerk.Mag.mean",
"f.Body.Body.Gyro.Jerk.Mag.std",
"f.Body.Body.Gyro.Jerk.Mag.mean.Freg",
"angle.t.Body.Accmean,gravity)",
"angle.t.Body.Acc.Jerk.mean,gravity.mean",
"angle.t.Body.Gyromean,gravity.mean",
"angle.t.Body.Gyro.Jerk.mean,gravity.mean",
"angle.X.gravity.mean",
"angle.Y.gravity.mean",
"angle.Z.gravity.mean",
"Subject.Num",
"Activity.Name")

#===================
#   Part 5, Create a second independent tidy data set with the average of each variable
#           for each activity and each subject
#===================


X_group_result <- group_by(X_data,Activity.Name,Subject.Num) %>%
summarise_each(funs(mean),t.Body.Acc.mean.X:angle.Z.gravity.mean)

write.table(X_group_result,file = "X_group_Result.txt",row.name=FALSE)

