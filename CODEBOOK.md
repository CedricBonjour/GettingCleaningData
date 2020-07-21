# PROJECT CODEBOOK


## Source

All the data used originates from [this link to a zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Full description of the data can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


## Modifications

The original data was modified by running the `run_analysis.R` script which does the following:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Data Descriptions



- subject.id *(the ID of the Subject)*
- activity *(the Name of the Activity performed by the subject when measurements were taken)*
- tbodyacc.mean.x
- tbodyacc.mean.y
- tbodyacc.mean.z
- tbodyacc.std.x
- tbodyacc.std.y
- tbodyacc.std.z
- tgravityacc.mean.x
- tgravityacc.mean.y
- tgravityacc.mean.z
- tgravityacc.std.x
- tgravityacc.std.y
- tgravityacc.std.z
- tbodyaccjerk.mean.x
- tbodyaccjerk.mean.y
- tbodyaccjerk.mean.z
- tbodyaccjerk.std.x
- tbodyaccjerk.std.y
- tbodyaccjerk.std.z
- tbodygyro.mean.x
- tbodygyro.mean.y
- tbodygyro.mean.z
- tbodygyro.std.x
- tbodygyro.std.y
- tbodygyro.std.z
- tbodygyrojerk.mean.x
- tbodygyrojerk.mean.y
- tbodygyrojerk.mean.z
- tbodygyrojerk.std.x
- tbodygyrojerk.std.y
- tbodygyrojerk.std.z
- tbodyaccmag.mean
- tbodyaccmag.std
- tgravityaccmag.mean
- tgravityaccmag.std
- tbodyaccjerkmag.mean
- tbodyaccjerkmag.std
- tbodygyromag.mean
- tbodygyromag.std
- tbodygyrojerkmag.mean
- tbodygyrojerkmag.std
- fbodyacc.mean.x
- fbodyacc.mean.y
- fbodyacc.mean.z
- fbodyacc.std.x
- fbodyacc.std.y
- fbodyacc.std.z
- fbodyacc.meanfreq.x
- fbodyacc.meanfreq.y
- fbodyacc.meanfreq.z
- fbodyaccjerk.mean.x
- fbodyaccjerk.mean.y
- fbodyaccjerk.mean.z
- fbodyaccjerk.std.x
- fbodyaccjerk.std.y
- fbodyaccjerk.std.z
- fbodyaccjerk.meanfreq.x
- fbodyaccjerk.meanfreq.y
- fbodyaccjerk.meanfreq.z
- fbodygyro.mean.x
- fbodygyro.mean.y
- fbodygyro.mean.z
- fbodygyro.std.x
- fbodygyro.std.y
- fbodygyro.std.z
- fbodygyro.meanfreq.x
- fbodygyro.meanfreq.y
- fbodygyro.meanfreq.z
- fbodyaccmag.mean
- fbodyaccmag.std
- fbodyaccmag.meanfreq
- fbodybodyaccjerkmag.mean
- fbodybodyaccjerkmag.std
- fbodybodyaccjerkmag.meanfreq
- fbodybodygyromag.mean
- fbodybodygyromag.std
- fbodybodygyromag.meanfreq
- fbodybodygyrojerkmag.mean
- fbodybodygyrojerkmag.std
- fbodybodygyrojerkmag.meanfreq
- angle(tbodyaccmean,gravity)
- angle(tbodyaccjerkmean),gravitymean)
- angle(tbodygyromean,gravitymean)
- angle(tbodygyrojerkmean,gravitymean)
- angle(x,gravitymean)
- angle(y,gravitymean)
- angle(z,gravitymean)