# Code Book

This code book summarizes the resulting data fields in tidy.txt.
You have to download sourse data from link below and unzip it to working directory of R Studio. You have to perform R script. About source data

As sourse data for work was used Human Activity Recognition Using Smartphones Data Set. 
A full description is available at the site where the data was obtained: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
Here are the data for the project: [Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## 7 steps of the code

* 1. Download and unzip the file.
* 2. Loads "activity labels" and "features".
* 3. Extracts the needed mean and standard deviation.
* 4. Loads "train" and "test" datasets.
* 5. Merges the two datasets.
* 6. Converts the activity and subject columns into factors.
* 7. Creates a tidy dataset.

The end result is shown in the file tidy.txt.


## Measurements

There are 78 measurements that changed from the raw data to the tidy data:

Tidy data | Raw data
------------ | -------------
subject | subject
activity | activity
tBodyAcc-mean()-X | tBodyAccMeanX
tBodyAcc-mean()-Y | tBodyAccMeanY
tBodyAcc-mean()-Z | tBodyAccMeanZ
tBodyAcc-std()-X | tBodyAccStdX

## Activity Labels

* 1. WALKING: subject was walking during the test10
* 2. WALKING_UPSTAIRS: subject was walking up a staircase during the test
* 3. WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
* 4. SITTING: subject was sitting during the test
* 5. STANDING: subject was standing during the test
* 6. LAYING: subject was laying down during the test

## Below is the description of the raw dataset:

Human Activity Recognition Using Smartphones Dataset Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

## For each record it is provided:

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.

## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
