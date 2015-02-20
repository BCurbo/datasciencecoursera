### Getting and Cleaning Data Course Project

author: Bruce Curbo								Date: 2/20/2015

this script prepares accelerometer data for future analysis.

This data set came from the USCI Machine Learning Repository.

the original authors and data sets can be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

There are 5 data set types using in this project
* Activity_Labels
    this file contains the description of the activities performed by the subjects
* Subject_test and Subject_train
     The subjects of the test. 30 in all
* X_test and Y_Test
     Test results for the subjects
* Features 
    the description of the measurements captured
* Feature_info    
    
    
## Approach

these four data sets had no column headers or indexes to directly link the tables.
the linkage that was defined was the row numbers in the data sets
 (subject_test/train, X_test/train , features).
    
 The initial steps followed were
 * Read in activity_labels.txt file
 * Read in subject_test.txt file
 * Read in subject_train.txt file
 * Read in features.txt file
 * read in X_test.txt file
 * Read in X_train.txt file
 * Read in Y_test.txt file
 * Read in Y_train.txt file 
 * Column bind X_test and subject_test to tie subject names into the test result set
 * Column bind X_train and subject_train to tie subject names into the train result set  
 * Column bind the above result set with activity_labels to add the activity number in the result set
 * Merge the activity Labels to the result sets (X_test, X_train) to get the activity name
 * Combine the rows of the X_test and X_train data to generate a combined test data set
 
 Given then a combined data, the following steps occurred
 * select the specific columns desired (all mean and std named columns, along with subject and activity name
 * Place this into a new data frame and update the column names for all columns
 * Summarize the data by Activity.Name and Subject.Num
 * From this summary, generate the average of each of the mean and std columns
 * Write this out to a file called X_group_Result.txt 
 
 At this point, there is a data frame that is ready for analysis using no external 
 sources of data or other inclusion required
 