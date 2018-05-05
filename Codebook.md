# My CODEBOOK
## Tocheee
## Coursera Project 3 Run_Analysis

The cleantable dataset is a tidy dataset consisting of averages of each variable in the original UCI HAR dataset which contained 'mean()' or 'std()'. It's dimensions are 180 X 68

The first two columns describe the subject and the activity. The remaining 66 variables are the means of the features described below.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Subject: 

This variable describes the subject performing the activity. There are 10 subjects in the dataset

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Activity: 

This is the action being performed by each subject. There are 6 activities:

* Laying
* Sitting
* Standing
* Walking_Downstairs
* Walking_Upstairs

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


To describe the 66 features, the following description has been taken from the README provided with the UCI HAR dataset and modified to explain my cleantable dataset.

Human Activity Recognition Using Smartphones Dataset
Version 1.0
------------------------------------------------------------------
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
---------------------------------------------------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

For each record it is provided:
------------------------------------------

- Triaxial acceleration from the accelerometer (Acc)(total acceleration) and the estimated body acceleration. atu
- Triaxial Angular velocity from the gyroscope (Gyro).
- A 66-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

### The dataset includes the following measurements:
---------------------------------------------

The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the Y and Z axis.

bodyAcc indicates the body acceleration signal obtained by subtracting the gravity from the total acceleration.

bodyGyro indicates: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### License:
---------------------------
Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### Feature Selection
----------------------------------

* The features selected for this database come from the accelerometer (Acc) and gyroscope (Gyro) 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. 

* Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

* Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Units and Variable descriptions

* mean() indicates the mean value
* std() indicates the standard deviation
* Accelerometer measurements containing (Acc) are measured in standard gravity units g
* Gyroscope measurements containing (Gyro) are measured in radians/second
* 'jerk' Indicates a jerk signal , that is the signal was derived in time
* Standard deviations and means are expressed in the same units


Cleantable finds the mean of each activity/subject pair of the means or standard deviations for each of the variables below.

* timebodyAcc-mean()-X: Average time domain of a body's acceleration on the x axis

* timebodyAcc-mean()-Y

* timebodyAcc-mean()-Z

* timebodyAcc-std()-X: Standard deviation of the time domain of a body's acceleration on the x axis

* timebodyAcc-std()-Y

* timebodyAcc-std()-Z

* timegravityAcc-mean()-X: Average time domain of acceleration on the x-axis

* timegravityAcc-mean()-Y

* timegravityAcc-mean()-Z

* timegravityAcc-std()-X: Standard deviation of the time domain of acceleration on the x-axis

* timegravityAcc-std()-Y

* timegravityAcc-std()-Z

* timebodyAccJerk-mean()-X: Average time of a body's jerking acceleration on the x-axis

* timebodyAccJerk-mean()-Y

* timebodyAccJerk-mean()-Z

* timebodyAccJerk-std()-X: Standard deviation of a body's jerking acceleration on the x-axis

* timebodyAccJerk-std()-Y

* timebodyAccJerk-std()-Z

* timebodyGyro-mean()-X: Average time domain of the angular velocity of a body on the x-axis

* timebodyGyro-mean()-Y

* timebodyGyro-mean()-Z

* timebodyGyro-std()-X: Standard deviation of the time domain of angular velocity on the x-axis

* timebodyGyro-std()-Y

* timebodyGyro-std()-Z

* timebodyGyroJerk-mean()-X: Average time domain of jerking angular velocity on x-axis

* timebodyGyroJerk-mean()-Y

* timebodyGyroJerk-mean()-Z

* timebodyGyroJerk-std()-X: Standard deviation of time domain of jerking angular velocity on x-axis

* timebodyGyroJerk-std()-Y

* timebodyGyroJerk-std()-Z

* timebodyAccMag-mean(): Average magnitude of acceleration of a body

* timebodyAccMag-std(): Standard deviation of the magnitude of acceleration

* timegravityAccMag-mean(): Average magnitude of the time domain of acceleration

* timegravityAccMag-std(): Standard deviation of the time domain of the angular velocity of a body

* timebodyAccJerkMag-mean(): Average magnitude of the time domain of jerking acceleration

* timebodyAccJerkMag-std(): Standard deviation of the magnitude of time domain of jerking acceleration

* timebodyGyroMag-mean(): Average magnitude of time domain of acceleration

* timebodyGyroMag-std(): Standard deviation of time domain of acceleration

* timebodyGyroJerkMag-mean(): Average magnitude of the time domain of jerk acceleration

* timebodyGyroJerkMag-std(): Standard deviation of the magnitude of the time domain of jerk acceleration

* frequencybodyAcc-mean()-X: Average frequency domain of a bodys acceleration on the X-axis

* frequencybodyAcc-mean()-Y

* frequencybodyAcc-mean()-Z

* frequencybodyAcc-std()-X: Standard deviation of frequency domain of a bodys acceleration on the x-axis

* frequencybodyAcc-std()-Y

* frequencybodyAcc-std()-Z

* frequencybodyAccJerk-mean()-X: Average frequency of a body's jerk acceleration in the x-axis

* frequencybodyAccJerk-mean()-Y

* frequencybodyAccJerk-mean()-Z

* frequencybodyAccJerk-std()-X: Standard deviation of a body's jerk acceleration

* frequencybodyAccJerk-std()-Y

* frequencybodyAccJerk-std()-Z

* frequencybodyGyro-mean()-X: Average frequency of angular velocity on the x-axis

* frequencybodyGyro-mean()-Y

* frequencybodyGyro-mean()-Z

* frequencybodyGyro-std()-X: Standard deviation of the frequency of angular velocity on the x-axis

* frequencybodyGyro-std()-Y

* frequencybodyGyro-std()-Z

* frequencybodyAccMag-mean(): Average frequency of the magnitude of a body's acceleration 

* frequencybodyAccMag-std(): Standard deviation of the frequency of a body's magnitude

* frequencybodyAccJerkMag-mean(): Average frequency of the magnitude of a body's jerk acceleration

* frequencybodyAccJerkMag-std(): Standard deviation of the frenquency of the magnitude of a body's jerk acceleration

* frequencybodyGyroMag-mean(): Average frequency of the magnitude of a body's angular velocity

* frequencybodyGyroMag-std(): Standard deviation of the magnitude of a body's angular velocity

* frequencybodyGyroJerkMag-mean(): Average frequency of the magnitude of a body's jerk angular velocity

* frequencybodyGyroJerkMag-std(): Standard deviation of the magnitude of a body's jerk angular velocity


#### To reiterate cleantable takes the variables above and finds the average. 
#### That is, cleantable contains the mean of means and mean of standard deviations. Units are as stated above.
