Code book - Course Project


Source Experiment & Data Set

The source data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone that can be downloaded from the following website: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

The data is made available by Reyes-Ortiz, Anguita, Ghio, and Oneto from the Smartlab Non Linear Complex Systems Laboratory in Genoa, Italy.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



Source Files

The source files we use to create the tidy data set from the extrated data archive are:

features.txt: contains a list of all features of the training and test datasets.
activity_labels.txt: contains the link between the class labels and the activity name.
train/X_train.txt: Training set.
train/y_train.txt: Training labels.
test/X_test.txt: Test set.
test/y_test.txt: Test labels.

train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


Variables

The activity labels consist of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING and the subjects are represented as a number from 1 to 30.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

Signals were used to estimate variables of the feature vector for each pattern: '*_[XYZ]$' is used to denote 3-axial signals in the X, Y and Z directions.

The list of the variables used is the following one:

subject, activity_name, tBodyAcc_mean_X, tBodyAcc_mean_Y, tBodyAcc_mean_Z, tBodyAcc_std_X, tBodyAcc_std_Y, tBodyAcc_std_Z, tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z, tGravityAcc_std_X, tGravityAcc_std_Y, tGravityAcc_std_Z, tBodyAccJerk_mean_X, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z, tBodyAccJerk_std_X, tBodyAccJerk_std_Y, tBodyAccJerk_std_Z, tBodyGyro_mean_X, tBodyGyro_mean_Y, tBodyGyro_mean_Z, tBodyGyro_std_X, tBodyGyro_std_Y, tBodyGyro_std_Z, tBodyGyroJerk_mean_X, tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z, tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z, tBodyAccMag_mean, tBodyAccMag_std, tGravityAccMag_mean, tGravityAccMag_std, tBodyAccJerkMag_mean, tBodyAccJerkMag_std, tBodyGyroMag_mean, tBodyGyroMag_std, tBodyGyroJerkMag_mean, tBodyGyroJerkMag_std, fBodyAcc_mean_X, fBodyAcc_mean_Y, fBodyAcc_mean_Z, fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z, fBodyAcc_meanFreq_X, fBodyAcc_meanFreq_Y, fBodyAcc_meanFreq_Z, fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, fBodyAccJerk_mean_Z, fBodyAccJerk_std_X, fBodyAccJerk_std_Y, fBodyAccJerk_std_Z, fBodyAccJerk_meanFreq_X, fBodyAccJerk_meanFreq_Y, fBodyAccJerk_meanFreq_Z, fBodyGyro_mean_X, fBodyGyro_mean_Y, fBodyGyro_mean_Z, fBodyGyro_std_X, fBodyGyro_std_Y, fBodyGyro_std_Z, fBodyGyro_meanFreq_X, fBodyGyro_meanFreq_Y, fBodyGyro_meanFreq_Z, fBodyAccMag_mean, fBodyAccMag_std, fBodyAccMag_meanFreq, fBodyBodyAccJerkMag_mean, fBodyBodyAccJerkMag_std, fBodyBodyAccJerkMag_meanFreq, fBodyBodyGyroMag_mean, fBodyBodyGyroMag_std, fBodyBodyGyroMag_meanFreq, fBodyBodyGyroJerkMag_mean, fBodyBodyGyroJerkMag_std, fBodyBodyGyroJerkMag_meanFreq

Transformations

The first dataset consisted of the union of the training and test datasets adding two new fields: the activity and the subject.

Then we extracted only those measurements that corresponded to means.

Finally we computed the mean and standard deviation for the filtered measures for each subject and activity.

We stored the results in the file result.txt


