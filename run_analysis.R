
#dependency
library(data.table)


# Reading all the data
x_train <- fread("data/UCI_HAR_Dataset/train/X_train.txt")
y_train <- fread("data/UCI_HAR_Dataset/train/Y_train.txt")
s_train <- fread("data/UCI_HAR_Dataset/train/subject_train.txt")

x_test <- fread("data/UCI_HAR_Dataset/test/X_test.txt")
y_test <- fread("data/UCI_HAR_Dataset/test/Y_test.txt")
s_test <- fread("data/UCI_HAR_Dataset/test/subject_test.txt")

# Merging test and train data
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
s_data <- rbind(s_train, s_test)


# Reading features 
feature <- fread("data/UCI_HAR_Dataset/features.txt")$V2

# Reading activity labels
activity <- fread("data/UCI_HAR_Dataset/activity_labels.txt")$V2

# Giving proper syntax to feature names and setting them as column headers
feature <- gsub("\\(\\)", "", feature)
feature <- gsub("-", ".", feature)
colnames(x_data) <- tolower( feature)

# Removing any unrelevnt column, keeping means and std. deviations
dt <- x_data[, colnames(x_data)  %like% "(\\.mean|\\.std)" , with=FALSE]

# adding a column with appropriate activity labels
dt$activity <-  as.character(factor(y_data$V1, levels = 1:6, labels = activity))

# adding a column with the subject id
dt$subject.id<-s_data$V1

# moving the 2 columns that were just added to the front as they are more relevant
dt <- dt[ ,c(ncol(dt),1:(ncol(dt)-1)), with=FALSE]
tidy <- dt[ ,c(ncol(dt),1:(ncol(dt)-1)), with=FALSE]

# at this point we have all the relevent tidy data in the dataframe : tidy

# building the overview 
keys <- melt(tidy, id = c("subject.id", "activity"))
overview <- dcast(keys, subject.id + activity ~ variable, mean)

# writing the table to a file
write.table(overview, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)



