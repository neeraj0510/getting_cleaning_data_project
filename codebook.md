# Code Book

This codebook tells us about the variables used in R during our analysis.
More importantly, it tells us about the variables in the final output dataset/data file 'tidy_output_avg.txt'.


# Identifiers

student.id - The ID of the test subject given in the data
activity - The type of activity performed when the corresponding measurements were taken.



# Activity labels in the identifier 'activity'

WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test


# Variables in the original dataset.

As described in detail in the file 'features_info.txt', different signals were collected and used to estimate variables.

The different variable had 3 componenets X, Y, Z sometimes, and  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The different variables in the beginning were:
tBodyAcc-XYZ   - 3 variables (one for each direction)
tGravityAcc-XYZ   - 3 variables (one for each direction)
tBodyAccJerk-XYZ   - 3 variables (one for each direction)
tBodyGyro-XYZ   - 3 variables (one for each direction)
tBodyGyroJerk-XYZ   - 3 variables (one for each direction)
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ   - 3 variables (one for each direction)
fBodyAccJerk-XYZ   - 3 variables (one for each direction)
fBodyGyro-XYZ   - 3 variables (one for each direction)
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Adding all of the above, we have 33 ( (3 times 8= 24) + 9 single directional/scalar) variables.


Now,The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

These are 17 estimated variables.

Therefore, 33*17= 561 variables initially. The complete list of these variables of each feature vector is available in 'features.txt' which was imported in our analysis.




However, we took only the mean() and std() estimated from the 33 variables, and worked with these 2*33= 66 variables as part of our project work.
In addition to these 66 variables, we have two identifiers for identification- student.id, activity.

Thus, we have a total of 68 variables in our output file 'tidy_output_avg.txt'.


# Measurements

As mentioned above, the 2 estimates (mean and std) of the base 33 variables gave us 66 variables, in addition to the 2 identifiers. The 2 identifiers and the 66 variables in my output file 'tidy_output_avg.txt' are:

•	student.id
•	activity
•	Average.tBodyAcc.mean.X
•	Average.tBodyAcc.mean.Y
•	Average.tBodyAcc.mean.Z
•	Average.tBodyAcc.std.X
•	Average.tBodyAcc.std.Y
•	Average.tBodyAcc.std.Z
•	Average.tGravityAcc.mean.X
•	Average.tGravityAcc.mean.Y
•	Average.tGravityAcc.mean.Z
•	Average.tGravityAcc.std.X
•	Average.tGravityAcc.std.Y
•	Average.tGravityAcc.std.Z
•	Average.tBodyAccJerk.mean.X
•	Average.tBodyAccJerk.mean.Y
•	Average.tBodyAccJerk.mean.Z
•	Average.tBodyAccJerk.std.X
•	Average.tBodyAccJerk.std.Y
•	Average.tBodyAccJerk.std.Z
•	Average.tBodyGyro.mean.X
•	Average.tBodyGyro.mean.Y
•	Average.tBodyGyro.mean.Z
•	Average.tBodyGyro.std.X
•	Average.tBodyGyro.std.Y
•	Average.tBodyGyro.std.Z
•	Average.tBodyGyroJerk.mean.X
•	Average.tBodyGyroJerk.mean.Y
•	Average.tBodyGyroJerk.mean.Z
•	Average.tBodyGyroJerk.std.X
•	Average.tBodyGyroJerk.std.Y
•	Average.tBodyGyroJerk.std.Z
•	Average.tBodyAccMag.mean
•	Average.tBodyAccMag.std
•	Average.tGravityAccMag.mean
•	Average.tGravityAccMag.std
•	Average.tBodyAccJerkMag.mean
•	Average.tBodyAccJerkMag.std
•	Average.tBodyGyroMag.mean
•	Average.tBodyGyroMag.std
•	Average.tBodyGyroJerkMag.mean
•	Average.tBodyGyroJerkMag.std
•	Average.fBodyAcc.mean.X
•	Average.fBodyAcc.mean.Y
•	Average.fBodyAcc.mean.Z
•	Average.fBodyAcc.std.X
•	Average.fBodyAcc.std.Y
•	Average.fBodyAcc.std.Z
•	Average.fBodyAccJerk.mean.X
•	Average.fBodyAccJerk.mean.Y
•	Average.fBodyAccJerk.mean.Z
•	Average.fBodyAccJerk.std.X
•	Average.fBodyAccJerk.std.Y
•	Average.fBodyAccJerk.std.Z
•	Average.fBodyGyro.mean.X
•	Average.fBodyGyro.mean.Y
•	Average.fBodyGyro.mean.Z
•	Average.fBodyGyro.std.X
•	Average.fBodyGyro.std.Y
•	Average.fBodyGyro.std.Z
•	Average.fBodyAccMag.mean
•	Average.fBodyAccMag.std
•	Average.fBodyBodyAccJerkMag.mean
•	Average.fBodyBodyAccJerkMag.std
•	Average.fBodyBodyGyroMag.mean
•	Average.fBodyBodyGyroMag.std
•	Average.fBodyBodyGyroJerkMag.mean
•	Average.fBodyBodyGyroJerkMag.std

