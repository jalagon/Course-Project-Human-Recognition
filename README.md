# Course-Project-Human-Recognition
Project for coursera's Getting and Cleaning Data

There are 4 files in this Repo:

1. **README.md** - this file 
2. **run_analysis.R** - an R script that runs the required analyses.
3. **CodeBook.md** - Describing all variables and summaries calculated, along with units and other relevant information.
4. **ActivityRecognitionSummaryTidy.txt** - a copy of the tidy dataset created by run_analysis.R

**run_analysis.R** - The script assumes data is already downlaoded from internet and saved in ./data directory with name = ActivitRecognition.zip. It then Unzip contents and reads datasets names. Then, it loads datasets into R, assigning names to variables. Now it perfoms the required analyses:

1. Merges the training and the test sets to create one data set, using cbind and rbind.
2. Extracts only the measurements on the mean and standard deviation for each measurement, using grep to identify variables and then arranging data frame and names variables..
3. Uses descriptive activity names to name the activities in the data set, assigning activity labels as provided by original authors.
4. Appropriately labels the data set with descriptive variable names, again using variable names provided by original authors.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. It uses dplyr package. Tidy dataset is saved as  ~/data/ActivityRecognitionSummaryTidy.txt


Project uses data from:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



