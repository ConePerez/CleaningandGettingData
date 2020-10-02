---
title: "README.md"
author: "Oscar Perez"
date: "30/9/2020"
output:
  html_document: default
  pdf_document: default
---
## Getting and Cleaning Data Course Project
The file run_analysis.R is a script file that provides a solution to the Getting and Cleanning Data Course Project from Coursera. It is implementing a single function with the name create_TidyData().  
The high level description of the implemention is as follows:  

* Reads all the input files required for the solution into data frame objects using the read.table function. (X_train.txt, Y_train.txt, X_test.txt, Y_test.txt, activity_labels.txt and features.txt)  
* Updates the column names from the data frames train_x and test_x using the features_lables data frame column 2. This will provide more descriptive names to all the columns.  
* Adds an extra column to the train_x and test_x data frames. The extra column is a factor with 6 levels that represent for each row what activity was measured. The extra column is added using the cbind function
* Merges the train_x and test_x data frames into a single one using the rbind function with the name project_data
* Transforms the project_data data frame by selecting only the column names that contains "mean()" or "std()" within its name (out of 561 column variables only 66 were selected), then grouping the resulting data frame by the activity column. Finally it does a summarization of the data calculating the mean by each of the activity. The resulting data frame contains 6 rows and 67 columns (66 columns plus the extra one from the grouping action). This action is performed by using the select, group_by and summarise_all functions with the %>% operator.
* The resulting transformed data frame is exported as a text file using the write.table function. The filename is courseproject_tidydata.txt
* The transformed data frame is returned as an object by the create_TidyData function

## Study design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:

Use of this dataset in publications must be acknowledged by referencing the following publication 1. 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Code book
Variable description from the courseproject_tidydata.txt

1. activity: Factor variable with 6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
1. tBodyAcc-mean()-X: the mean value from all the subjects in the study.
1. tBodyAcc-mean()-Y: the mean value from all the subjects in the study.
1. tBodyAcc-mean()-Z: the mean value from all the subjects in the study.
1. tBodyAcc-std()-X: the mean value from all the subjects in the study.
1. tBodyAcc-std()-Y: the mean value from all the subjects in the study.
1. tBodyAcc-std()-Z: the mean value from all the subjects in the study.
1. tGravityAcc-mean()-X: the mean value from all the subjects in the study.
1. tGravityAcc-mean()-Y: the mean value from all the subjects in the study.
1. tGravityAcc-mean()-Z: the mean value from all the subjects in the study.
1. tGravityAcc-std()-X: the mean value from all the subjects in the study.
1. tGravityAcc-std()-Y: the mean value from all the subjects in the study.
1. tGravityAcc-std()-Z: the mean value from all the subjects in the study.
1. tBodyAccJerk-mean()-X: the mean value from all the subjects in the study.
1. tBodyAccJerk-mean()-Y: the mean value from all the subjects in the study.
1. tBodyAccJerk-mean()-Z: the mean value from all the subjects in the study.
1. tBodyAccJerk-std()-X: the mean value from all the subjects in the study.
1. tBodyAccJerk-std()-Y: the mean value from all the subjects in the study.
1. tBodyAccJerk-std()-Z: the mean value from all the subjects in the study.
1. tBodyGyro-mean()-X: the mean value from all the subjects in the study.
1. tBodyGyro-mean()-Y: the mean value from all the subjects in the study.
1. tBodyGyro-mean()-Z: the mean value from all the subjects in the study.
1. tBodyGyro-std()-X: the mean value from all the subjects in the study.
1. tBodyGyro-std()-Y: the mean value from all the subjects in the study.
1. tBodyGyro-std()-Z: the mean value from all the subjects in the study.
1. tBodyGyroJerk-mean()-X: the mean value from all the subjects in the study.
1. tBodyGyroJerk-mean()-Y: the mean value from all the subjects in the study.
1. tBodyGyroJerk-mean()-Z: the mean value from all the subjects in the study.
1. tBodyGyroJerk-std()-X: the mean value from all the subjects in the study.
1. tBodyGyroJerk-std()-Y: the mean value from all the subjects in the study.
1. tBodyGyroJerk-std()-Z: the mean value from all the subjects in the study.
1. tBodyAccMag-mean(): the mean value from all the subjects in the study.
1. tBodyAccMag-std(): the mean value from all the subjects in the study.
1. tGravityAccMag-mean(): the mean value from all the subjects in the study.
1. tGravityAccMag-std(): the mean value from all the subjects in the study.
1. tBodyAccJerkMag-mean(): the mean value from all the subjects in the study.
1. tBodyAccJerkMag-std(): the mean value from all the subjects in the study.
1. tBodyGyroMag-mean(): the mean value from all the subjects in the study.
1. tBodyGyroMag-std(): the mean value from all the subjects in the study.
1. tBodyGyroJerkMag-mean(): the mean value from all the subjects in the study.
1. tBodyGyroJerkMag-std(): the mean value from all the subjects in the study.
1. fBodyAcc-mean()-X: the mean value from all the subjects in the study.
1. fBodyAcc-mean()-Y: the mean value from all the subjects in the study.
1. fBodyAcc-mean()-Z: the mean value from all the subjects in the study.
1. fBodyAcc-std()-X: the mean value from all the subjects in the study.
1. fBodyAcc-std()-Y: the mean value from all the subjects in the study.
1. fBodyAcc-std()-Z: the mean value from all the subjects in the study.
1. fBodyAccJerk-mean()-X: the mean value from all the subjects in the study.
1. fBodyAccJerk-mean()-Y: the mean value from all the subjects in the study.
1. fBodyAccJerk-mean()-Z: the mean value from all the subjects in the study.
1. fBodyAccJerk-std()-X: the mean value from all the subjects in the study.
1. fBodyAccJerk-std()-Y: the mean value from all the subjects in the study.
1. fBodyAccJerk-std()-Z: the mean value from all the subjects in the study.
1. fBodyGyro-mean()-X: the mean value from all the subjects in the study.
1. fBodyGyro-mean()-Y: the mean value from all the subjects in the study.
1. fBodyGyro-mean()-Z: the mean value from all the subjects in the study.
1. fBodyGyro-std()-X: the mean value from all the subjects in the study.
1. fBodyGyro-std()-Y: the mean value from all the subjects in the study.
1. fBodyGyro-std()-Z: the mean value from all the subjects in the study.
1. fBodyAccMag-mean(): the mean value from all the subjects in the study.
1. fBodyAccMag-std(): the mean value from all the subjects in the study.
1. fBodyBodyAccJerkMag-mean(): the mean value from all the subjects in the study.
1. fBodyBodyAccJerkMag-std(): the mean value from all the subjects in the study.
1. fBodyBodyGyroMag-mean(): the mean value from all the subjects in the study.
1. fBodyBodyGyroMag-std(): the mean value from all the subjects in the study.
1. fBodyBodyGyroJerkMag-mean(): the mean value from all the subjects in the study.
1. fBodyBodyGyroJerkMag-std(): the mean value from all the subjects in the study.