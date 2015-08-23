#CodeBook

Tidy dataset created contains 180 rows and 81 columns. 

**Rows** are the measurements for each *Subject* (30) in each *Activity* (6). Rows are sorted by subject and the activity.

**First two columns** identify the *Subject* and the *Activity*.

1. **Subject** - there are 30 sujects in the study, each represented by an integer from 1 to 30.
2. **Activity** - there where 6 activities registered for each subject, respresented as an integer from 1 to 6 with labels: 1)WALKING, 2)WALKING_UPSTAIRS, 3)WALKING_DOWNSTAIRS, 4)SITTING, 5)STANDING and 6)LAYING.

All remaining **79 columns** are the average of the 79 variables in the original datasets based on the mean or the standard deviation for each measurement. Therefore, they include all 17 features in the X, Y and Z directions as mean, meanfreq and standard deviation, plus the 5 average vectors as mean and standard deviations. 

3. Mean of tBodyAcc-mean()-X
4. Mean of tBodyAcc-mean()-Y
5. Mean of tBodyAcc-mean()-Z
6. Mean of tGravityAcc-mean()-X
7. Mean of tGravityAcc-mean()-Y
8. Mean of tGravityAcc-mean()-Z
9. Mean of tBodyAccJerk-mean()-X
10. Mean of tBodyAccJerk-mean()-Y
11. Mean of tBodyAccJerk-mean()-Z
12. Mean of tBodyGyro-mean()-X
13. Mean of tBodyGyro-mean()-Y
14. Mean of tBodyGyro-mean()-Z
15. Mean of tBodyGyroJerk-mean()-X
16. Mean of tBodyGyroJerk-mean()-Y
17. Mean of tBodyGyroJerk-mean()-Z
18. Mean of tBodyAccMag-mean()
19. Mean of tGravityAccMag-mean()
20. Mean of tBodyAccJerkMag-mean()
21. Mean of tBodyGyroMag-mean()
22. Mean of tBodyGyroJerkMag-mean()
23. Mean of fBodyAcc-mean()-X
24. Mean of fBodyAcc-mean()-Y
25. Mean of fBodyAcc-mean()-Z
26. Mean of fBodyAcc-meanFreq()-X
27. Mean of fBodyAcc-meanFreq()-Y
28. Mean of fBodyAcc-meanFreq()-Z
29. Mean of fBodyAccJerk-mean()-X
30. Mean of fBodyAccJerk-mean()-Y
31. Mean of fBodyAccJerk-mean()-Z
32. Mean of fBodyAccJerk-meanFreq()-X
33. Mean of fBodyAccJerk-meanFreq()-Y
34. Mean of fBodyAccJerk-meanFreq()-Z
35. Mean of fBodyGyro-mean()-X
36. Mean of fBodyGyro-mean()-Y
37. Mean of fBodyGyro-mean()-Z
38. Mean of fBodyGyro-meanFreq()-X
39. Mean of fBodyGyro-meanFreq()-Y
40. Mean of fBodyGyro-meanFreq()-Z
41. Mean of fBodyAccMag-mean()
42. Mean of fBodyAccMag-meanFreq()
43. Mean of fBodyBodyAccJerkMag-mean()
44. Mean of fBodyBodyAccJerkMag-meanFreq()
45. Mean of fBodyBodyGyroMag-mean()
46. Mean of fBodyBodyGyroMag-meanFreq()
47. Mean of fBodyBodyGyroJerkMag-mean()
48. Mean of fBodyBodyGyroJerkMag-meanFreq()
49. Mean of tBodyAcc-std()-X
50. Mean of tBodyAcc-std()-Y
51. Mean of tBodyAcc-std()-Z
52. Mean of tGravityAcc-std()-X
53. Mean of tGravityAcc-std()-Y
54. Mean of tGravityAcc-std()-Z
55. Mean of tBodyAccJerk-std()-X
56. Mean of tBodyAccJerk-std()-Y
57. Mean of tBodyAccJerk-std()-Z
58. Mean of tBodyGyro-std()-X
59. Mean of tBodyGyro-std()-Y
60. Mean of tBodyGyro-std()-Z
61. Mean of tBodyGyroJerk-std()-X
62. Mean of tBodyGyroJerk-std()-Y
63. Mean of tBodyGyroJerk-std()-Z
64. Mean of tBodyAccMag-std()
65. Mean of tGravityAccMag-std()
66. Mean of tBodyAccJerkMag-std()
67. Mean of tBodyGyroMag-std()
68. Mean of tBodyGyroJerkMag-std()
69. Mean of fBodyAcc-std()-X
70. Mean of fBodyAcc-std()-Y
71. Mean of fBodyAcc-std()-Z
72. Mean of fBodyAccJerk-std()-X
73. Mean of fBodyAccJerk-std()-Y
74. Mean of fBodyAccJerk-std()-Z
75. Mean of fBodyGyro-std()-X
76. Mean of fBodyGyro-std()-Y
77. Mean of fBodyGyro-std()-Z
78. Mean of fBodyAccMag-std()
79. Mean of fBodyBodyAccJerkMag-std()
80. Mean of fBodyBodyGyroMag-std()
81. Mean of fBodyBodyGyroJerkMag-std()


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


