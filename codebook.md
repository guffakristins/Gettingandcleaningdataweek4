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