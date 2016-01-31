# Coursera_Getting_and_Cleaning_Data_Project
## Description
Course project for Coursera course "Getting and Cleaning Data".
The aim of this assignment is to create a tidy data set summarizing data obtained from the site: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
This data is captured from the accelerometers on Samsung Galaxy 5 smartphones. 

A full description of the data can be found at the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files Contained in this repo:
* README.md - this file
* Codebook.md - the project code book, which describes the raw data set, its variables, dimensions, and the transformations used to compute the tidy data set.
* run_analysis.R - the R code used to transform the raw data set into the tidy data set.


## The Course Project assignment
You should create one R script called run_analysis.R that does the following.
* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement.
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names.
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Generating the Tidy Data Set
* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* *Unzip the data set file and copy the R script "run_analysis.R" to the "UCI HAR Dataset" folder. 
* Run the script "run_analysis.R". 
* The file "tidy_data_set.txt" will be created in the "UCI HAR Dataset" folder. 
