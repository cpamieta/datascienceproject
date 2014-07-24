#Code book for the run_analysis script


##Variable names

The original data had 561 Variables, but for the tidy data set, only the mean and std are needed.
Two other variables were created during the merging of the test and training data set,Activity and Subject.
To make the variable names a little easier to read, the dash "-"  and the brackets "()" where removed.

	####* "Activity"
	This variable contains the type of activity the person performed.
	The original values where just numbers which were later converted into descriptive strings.
	
		The six potential values.
			 * WALKING
			 * WALKING_UPSTAIRS
			 * WALKING_DOWNSTAIRS
			 * SITTING
			 * STANDING
			 * LAYING
	
	
	####* "Subject"
	This Variable indicated which person the data was collected from.
		The value ranges from 1 to 30.
	
	
	
	### The rest of the variables: Most of the  variable has three forms of it denoted by X,Y,Z at the end.
    ###	The three letters used to denote 3-axial signals in the X, Y and Z directions.
			* tBodyAcc-XYZ
			* tGravityAcc-XYZ
			* tBodyAccJerk-XYZ
			* tBodyGyro-XYZ
			* tBodyGyroJerk-XYZ
			* tBodyAccMag
			* tGravityAccMag
			* tBodyAccJerkMag
			* tBodyGyroMag
			* tBodyGyroJerkMag
			* fBodyAcc-XYZ
			* fBodyAccJerk-XYZ
			* fBodyGyro-XYZ
			* fBodyAccMag
			* fBodyAccJerkMag
			* fBodyGyroMag
			* fBodyGyroJerkMag

	### Each form of the variable has two calculation performed, the mean and the Standard deviation. You can see this by 
	###having either mean or std near the the end of the variable name. At the end, the values are displayed as floats with
	###seven digits after the decimal point.
	
	
	####* "tBodyAccmeanX"	
	####* "tBodyAccmeanY"
	####* "tBodyAccmeanZ"	
	####* "tBodyAccstdX"	
	####* "tBodyAccstdY"	
	####* "tBodyAccstdZ"	
	####* "tGravityAccmeanX"
	####* "tGravityAccmeanY"	
	####* "tGravityAccmeanZ"
	####* "tGravityAccstdX"	
	####* "tGravityAccstdY"	
	####* "tGravityAccstdZ"
	####* "tBodyAccJerkmeanX"
	####* "tBodyAccJerkmeanY"	
	####* "tBodyAccJerkmeanZ"	
	####* "tBodyAccJerkstdX"	
	####* "tBodyAccJerkstdY"	
	####* "tBodyAccJerkstdZ"	
	####* "tBodyGyromeanX"	
	####* "tBodyGyromeanY"	
	####* "tBodyGyromeanZ"	
	####* "tBodyGyrostdX"	
	####* "tBodyGyrostdY"	
	####* "tBodyGyrostdZ"	
	####* "tBodyGyroJerkmeanX"
	####* "tBodyGyroJerkmeanY"
	####* "tBodyGyroJerkmeanZ"
	####* "tBodyGyroJerkstdX"	
	####* "tBodyGyroJerkstdY"
	####* "tBodyGyroJerkstdZ"	
	####* "tBodyAccMagmean"	
	####* "tBodyAccMagstd"	
	####* "tGravityAccMagmean"
	####* "tGravityAccMagstd"	
	####* "tBodyAccJerkMagmean"
	####* "tBodyAccJerkMagstd"
	####* "tBodyGyroMagmean"	
	####* "tBodyGyroMagstd"	
	####* "tBodyGyroJerkMagmean"
	####* "tBodyGyroJerkMagstd"
	####* "fBodyAccmeanX"	
	####* "fBodyAccmeanY"	
	####* "fBodyAccmeanZ"	
	####* "fBodyAccstdX"	
	####* "fBodyAccstdY"	
	####* "fBodyAccstdZ"
	####* "fBodyAccJerkmeanX"
	####* "fBodyAccJerkmeanY"
	####* "fBodyAccJerkmeanZ"	
	####* "fBodyAccJerkstdX"	
	####* "fBodyAccJerkstdY"	
	####* "fBodyAccJerkstdZ"	
	####* "fBodyGyromeanX"	
	####* "fBodyGyromeanY"	
	####* "fBodyGyromeanZ"	
	####* "fBodyGyrostdX"	
	####* "fBodyGyrostdY"	
	####* "fBodyGyrostdZ"	
	####* "fBodyAccMagmean"	
	####* "fBodyAccMagstd"	
	####* "fBodyBodyAccJerkMagmean"
	####* "fBodyBodyAccJerkMagstd"	
	####* "fBodyBodyGyroMagmean"	
	####* "fBodyBodyGyroMagstd"	
	####* "fBodyBodyGyroJerkMagmean"
	####* "fBodyBodyGyroJerkMagstd"
