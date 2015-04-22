#Code book

##Data information

SOURCE
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

More information: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Variable descriptions
Below is an overview of the variables in the tidy dataset

* subjectID: An identifier of the subject who carried out the experiment
* activityID: Activity label (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, or LAYING)
* fBodyAcc-mean-X: Mean of fBodyAcc-X
* fBodyAcc-mean-Y: Mean off fBodyAcc-Y
* fBodyAcc-mean-Z: Mean of fBodyAcc-Z
* fBodyAcc-std-X: Mean standard deviation off BodyAcc-X
* fBodyAcc-std-Y: Mean standard deviation of fBodyAcc-Y
* fBodyAcc-std-Z: Mean standard deviation of fBodyAcc-Z
* fBodyAccJerk-mean-X: Mean of fBodyAccJerk-X
* fBodyAccJerk-mean-Y: Mean off BodyAccJerk-Y
* fBodyAccJerk-mean-Z: Mean of fBodyAccJerk-Z
* fBodyAccJerk-std-X: Mean standard deviation of fBodyAccJerk-X
* fBodyAccJerk-std-Y: Mean standard deviation of fBodyAccJerk-Y
* fBodyAccJerk-std-Z: Mean standard deviation of fBodyAccJerk-Z
* fBodyAccMag-mean: Mean off BodyAccMag
* fBodyAccMag-std: Mean standard deviation of fBodyAccMag
* fBodyBodyAccJerkMag-mean: Mean of fBodyBodyAccJerkMag
* fBodyBodyAccJerkMag-std: Mean standard deviation of fBodyBodyAccJerkMag
* fBodyBodyGyroJerkMag-mean: Mean of fBodyBodyGyroJerkMag
* fBodyBodyGyroJerkMag-std: Mean standard deviation of fBodyBodyGyroJerkMag
* fBodyBodyGyroMag-mean: Mean of fBodyBodyGyroMag
* fBodyBodyGyroMag-std: Mean standard deviation of fBodyBodyGyroMag
* fBodyGyro-mean-X: Mean of fBodyGyro-X
* fBodyGyro-mean-Y: Mean of fBodyGyr-Y
* fBodyGyro-mean-Z: Mean of fBodyGyro-Z
* fBodyGyro-std-X: Mean standard deviation of fBodyGyro-X
* fBodyGyro-std-Y: Mean standard deviation of fBodyGyro-Y
* fBodyGyro-std-Z: Mean standard deviation of fBodyGyro-Z
* tBodyAcc-mean-X: Mean of tBodyAcc-X
* tBodyAcc-mean-Y: Mean of tBodyAcc-Y
* tBodyAcc-mean-Z: Mean of tBodyAcc-Z
* tBodyAcc-std-X: Mean standard deviation of tBodyAcc-X
* tBodyAcc-std-Y: Mean standard deviation of tBodyAcc-Y
* tBodyAcc-std-Z: Mean standard deviation of tBodyAcc-Z
* tBodyAccJerk-mean-X: Mean of tBodyAccJerk-X
* tBodyAccJerk-mean-Y: Mean of tBodyAccJerk-Y
* tBodyAccJerk-mean-Z: Mean of tBodyAccJerk-Z
* tBodyAccJerk-std-X: Mean standard deviation of tBodyAccJerk-X
* tBodyAccJerk-std-Y: Mean standard deviation of tBodyAccJerk-Y
* tBodyAccJerk-std-Z: Mean standard deviation of tBodyAccJerk-Z
* tBodyAccJerkMag-mean: Mean of tBodyAccJerkMag
* tBodyAccJerkMag-std: Mean standard deviation of tBodyAccJerkMag
* tBodyAccMag-mean: Mean of tBodyAccMag
* tBodyAccMag-std: Mean standard deviation of tBodyAccMag
* tBodyGyro-mean-X: Mean of tBodyGyro-X
* tBodyGyro-mean-Y: Mean of tBodyGyro-Y
* tBodyGyro-mean-Z: Mean of tBodyGyro-Z
* tBodyGyro-std-X: Mean standard deviation of tBodyGyro-X
* tBodyGyro-std-Y: Mean standard deviation of tBodyGyro-Y
* tBodyGyro-std-Z: Mean standard deviation of tBodyGyro-Z
* tBodyGyroJerk-mean-X: Mean of tBodyGyroJerk-X
* tBodyGyroJerk-mean-Y: Mean of tBodyGyroJerk-Y
* tBodyGyroJerk-mean-Z: Mean of tBodyGyroJerk-Z
* tBodyGyroJerk-std-X: Mean standard deviation of tBodyGyroJerk-X
* tBodyGyroJerk-std-Y: Mean standard deviation of tBodyGyroJerk-Y
* tBodyGyroJerk-std-Z: Mean standard deviation of tBodyGyroJerk-Z
* tBodyGyroJerkMag-mean: Mean of tBodyGyroJerkMag
* tBodyGyroJerkMag-std: Mean standard deviation of tBodyGyroJerkMag
* tBodyGyroMag-mean: Mean of tBodyGyroMag
* tBodyGyroMag-std: Mean standard deviation of tBodyGyroMag
* tGravityAcc-mean-X: Mean of tGravityAcc-X
* tGravityAcc-mean-Y: Mean of tGravityAcc-Y
* tGravityAcc-mean-Z: Mean of tGravityAcc-Z
* tGravityAcc-std-X: Mean standard deviation of tGravityAcc-X
* tGravityAcc-std-Y: Mean standard deviation of tGravityAcc-Y
* tGravityAcc-std-Z: Mean standard deviation of tGravityAcc-Z
* tGravityAccMag-mean: Mean of tGravityAccMag
* tGravityAccMag-std: Mean standard deviation of tGravityAccMag

##Performed transformations 
The run_analysis.R scipt does the following
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Adds descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a new, independent tidy data set with the average of each variable for each activity and each subject.