### Code Book for X_group_Result.txt

Author: Bruce Curbo
Date:   02/20/2015

This document describes the data included in the file X_group_Result.txt


##Data Set Information:

This data set was sourced from USCI Machine Learning Repository. You find see the 
data set at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The experiments have been carried out with a group of 30 volunteers within an age 
bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial
angular velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned into 
two sets, where 70% of the volunteers was selected for generating the training data 
and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency
components, therefore a filter with 0.3 Hz cutoff frequency was used. From each 
window, a vector of features was obtained by calculating variables from the time and 
frequency domain.

##Attribute Information:

For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 87-feature data frame with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


Activity.Name
Subject.Num
t.Body.Acc.mean.X
t.Body.Acc.mean.Y
t.Body.Acc.mean.Z
t.Body.Acc.std.X
t.Body.Acc.std.Y
t.Body.Acc.std.Z
t.Gravity.Acc.mean.Y
t.Gravity.Acc.mean.Z
t.Gravity.Acc.Std.X
t.Gravity.Acc.Std.Y
t.Gravity.Acc.Std.Z
t.Body.Acc.Jerk.mean.X
t.Body.Acc.Jerk.mean.Y
t.Body.Acc.Jerk.mean.Z
t.Body.Acc.Jerk.std.X
t.Body.Acc.Jerk.std.Y
t.Body.Acc.Jerk.std.Z
t.Body.Gyro.mean.X
t.Body.Gyro.mean.Y
t.Body.Gyro.mean.Z
t.Body.Gyro.std.X
t.Body.Gyro.std.Y
t.Body.Gyro.std.Z
t.Body.Gyro.Jerk.mean.X
t.Body.Gyro.Jerk.mean.Y
t.Body.Gyro.Jerk.mean.Z
t.Body.Gyro.Jerk.std.X
t.Body.Gyro.Jerk.std.Y
t.Body.Gyro.Jerk.std.Z
t.Body.Acc.Mag.mean
t.Body.Acc.Mag.std
t.Gravity.Acc.Mag.mean
t.Gravity.Acc.Mag.std
t.Body.Acc.Jerk.Mag.mean
t.Body.Acc.Jerk.Mag.std
t.Body.Gyro.Mag.mean
t.Body.Gyro.Mag.std
t.Body.Gyro.Jerk.Mag.mean
t.Body.Gyro.Jerk.Mag.std
f.Body.Acc.mean.X
f.Body.Acc.mean.Y
f.Body.Acc.mean.Z
f.Body.Acc.Std.X
f.Body.Acc.Std.Y
f.Body.Acc.Std.Z
f.Body.Acc.mean.Freg.X
f.Body.Acc.mean.Freg.Y
f.Body.Acc.mean.Freg.Z
f.Body.Acc.Jerk.mean.X
f.Body.Acc.Jerk.mean.Y
f.Body.Acc.Jerk.mean.Z
f.Body.Acc.Jerk.std.X
f.Body.Acc.Jerk.std.Y
f.Body.Acc.Jerk.std.Z
f.Body.Acc.Jerk.mean.Freg.X
f.Body.Acc.Jerk.mean.Freg.Y
f.Body.Acc.Jerk.mean.Freg.Z
f.Body.Gyro.mean.X
f.Body.Gyro.mean.Y
f.Body.Gyro.mean.Z
f.Body.Gyro.std.X
f.Body.Gyro.std.Y
f.Body.Gyro.std.Z
f.Body.Gyro.mean.Freg.X
f.Body.Gyro.mean.Freg.Y
f.Body.Gyro.mean.Freg.Z
f.Body.Acc.Mag.mean
f.Body.Acc.Mag.std
f.Body.Acc.Mag.mean.Freg
f.Body.Body.Acc.Jerk.Mag.mean
f.Body.Body.Acc.Jerk.Mag.std
f.Body.Body.Acc.Jerk.Mag.mean.Freg
f.Body.Body.Gyro.Mag.mean
f.Body.Body.Gyro.Mag.std
f.Body.Body.Gyro.Mag.mean.Freg
f.Body.Body.Gyro.Jerk.Mag.mean
f.Body.Body.Gyro.Jerk.Mag.std
f.Body.Body.Gyro.Jerk.Mag.mean.Freg
angle.t.Body.Accmean,gravity)
angle.t.Body.Acc.Jerk.mean,gravity.mean
angle.t.Body.Gyromean,gravity.mean
angle.t.Body.Gyro.Jerk.mean,gravity.mean
angle.X.gravity.mean
angle.Y.gravity.mean
angle.Z.gravity.mean
