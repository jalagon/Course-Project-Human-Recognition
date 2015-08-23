#################
# This code assumes .ZIP with data is downloaded to the ./data directory with name = ActivitRecognition.zip
# Otherwise, un-comment the following 3 lines to read data from internet and save to /data directory 
#################

# if (!file.exists("./data")) {dir.create("./data")}
# fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(fileURL, destfile = "./data/ActivityRecognition.zip")

# Unzip and read datasets names #
datasets <-
  unzip(zipfile = "~/data/ActivityRecognition.zip", list = TRUE)
fileNames <- datasets$Name
unzip(zipfile = "~/data/ActivityRecognition.zip", exdir = "./data")

# Load datasets into R #
activity_labels <-
  read.table(
    "~/data/UCI HAR Dataset/activity_labels.txt", quote = "\"", comment.char = ""
  )
features <-
  read.table("~/data/UCI HAR Dataset/features.txt", quote = "\"", comment.char = "")
X_train <-
  read.table(
    "~/data/UCI HAR Dataset/train/X_train.txt", quote = "\"", comment.char = ""
  )
y_train <-
  read.table(
    "~/data/UCI HAR Dataset/train/y_train.txt", quote = "\"", comment.char =
      ""
  )
subject_train <-
  read.table(
    "~/data/UCI HAR Dataset/train/subject_train.txt", quote = "\"", comment.char =
      ""
  )
X_test <-
  read.table(
    "~/data/UCI HAR Dataset/test/X_test.txt", quote = "\"", comment.char = ""
  )
y_test <-
  read.table(
    "~/data/UCI HAR Dataset/test/y_test.txt", quote = "\"", comment.char = ""
  )
subject_test <-
  read.table(
    "~/data/UCI HAR Dataset/test/subject_test.txt", quote = "\"", comment.char =
      ""
  )

# Assigns names to variables #
names(y_test) <- "activity"
names(y_train) <- "activity"
names(subject_train) <- "subject"
names(subject_test) <- "subject"

# 1. Merges the training and the test sets to create one data set #
test <- cbind.data.frame(subject_test,y_test,X_test)
train <- cbind.data.frame(subject_train,y_train,X_train)
test$TrainOrTest <- "Test"
train$TrainOrTest <- "Train"
ActivityRecognition <- rbind.data.frame(test,train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement #
x <- grep("mean", features$V2)
y <- grep("std", features$V2)
z <- c(x,y) + 2

# Arranges data frame and names variables #
ActivityRecognitionFiltered <- ActivityRecognition[,c(1:2,z,564)]
names(ActivityRecognitionFiltered) <-
  c("Subject","Activity", as.character.factor(features$V2[z - 2]),"TrainOrTest")
ActivityRecognitionFilteredOrdered <-
  ActivityRecognitionFiltered[,c(1,2,82,3:81)]

# 3. Uses descriptive activity names to name the activities in the data set #
ActivityRecognitionFilteredOrdered$Activity <-
  factor(ActivityRecognitionFilteredOrdered$Activity, labels = as.character(activity_labels$V2))


# 4. Appropriately labels the data set with descriptive variable names #
names(ActivityRecognitionFilteredOrdered) #Already named, just checking names


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# install.packages("dplyr")
library(dplyr)
ActivityRecognitionFilteredOrdered$ActXSub <-
  paste(
    ActivityRecognitionFilteredOrdered$Activity, ActivityRecognitionFilteredOrdered$Subject
  )
ActivityRecognitionSummary.Tidy <-
  ActivityRecognitionFilteredOrdered %>% group_by(ActXSub) %>% summarise_each(funs(mean)) %>% select(-(c(1,4))) %>% arrange(Subject, Activity)
names(ActivityRecognitionSummary.Tidy) <-
  c("Subject", "Activity", paste("Mean of", names(ActivityRecognitionSummary.Tidy[3:81])))
write.table(ActivityRecognitionSummary.Tidy,"~/data/ActivityRecognitionSummaryTidy.txt", row.name=FALSE)
