## Download the file
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = "UCI Dataset", method = "curl")
dateDownloaded <- date()
unzip("UCI Dataset")

## Read the datasets into R
train <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "", colClasses = "numeric")
test <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "", colClasses = "numeric")

## Combine the datasets
combined <- rbind(train, test)

## Create appropriate labels for the variables
labels <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")
labels <- labels[,2]
labels <- make.names(labels)
names(combined) <- labels

## Subset the mean and standard deviation variables
index <- append(grep("mean", names(combined)), grep("std", names(combined)))
index <- sort(index)
combined <- combined[,index]

## Add in variables for Activity and Subject
trainAct <- read.table("UCI HAR Dataset/train/y_train.txt")
testAct <- read.table("UCI HAR Dataset/test/y_test.txt")
activity <- rbind(trainAct, testAct)
trainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
testSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(trainSub, testSub)
combined[, c("Activity", "Subject")] <- c(activity, subject)

## Calculate averages by Activity and Subject
final <- aggregate(combined[,1:79], by = list(combined$Subject, combined$Activity), FUN = mean)
colnames(final)[1:2] <- c("Subject", "Activity")
subNames <- c()
for (i in 1:30) {
    subNames <- append(subNames, paste("Subject", i))
}
final[,1] <- rep(subNames, 6)
actNames <- read.table("UCI HAR Dataset/activity_labels.txt")
actNames <- actNames[,2]
final[,2] <- rep(actNames, each = 30)
names(final) <- sub(".", "", names(final), fixed = TRUE)
names(final) <- sub("..", "", names(final), fixed = TRUE)
names(final) <- sub("...", "", names(final), fixed = TRUE)

## Create the file with the new dataset
write.table(final, file = "finaldata.txt", sep = ",", row.names = FALSE, col.names = TRUE)
