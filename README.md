# GettingCleaningData
Getting and Cleaning Data Course project


All the data used originates from [this link to a zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Full description of the data can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data has been extracted to the repo's `data\UCI_HAR_Dataset` folder


## Tidy data with the `run_analysis.R` script

`run_analysis.R` does the following:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
