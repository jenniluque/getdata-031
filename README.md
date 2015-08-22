
# Getting and Cleaning Data - Course project


Instructions

Download the file run_analysis.R and execute it in the same directory where the data is.

Data Source

This project uses the "Human Activity Recognition Using Smartphones Dataset". This data is data collected from the accelerometers from the Samsung Galaxy S smartphone.

Script Walkthrough

The run_analysis.R script will perform the following steps:


Extracts the data set files from the archive.
Reads training & test column files 
Reads feature names and sets column/variable names respectively.
Create a data frame by mergin the training and the test datasets.
Extracts measurements on mean & standard deviation, for each measurement
Sets activity names on the class labels.
Labels data with descriptive variable/column names by removing the characters "(" and ")" in the column names and by replacing hyphen's with underscores in the column names.
Creates a second, independent, tidy data set which contains the average of each variable for each activity and subject
Saves the resulting tidy data set to file result.txt
