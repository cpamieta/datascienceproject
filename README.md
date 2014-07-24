##Getting and Cleaning Data Course Project.

Data clean up performed by Chris 

##Files included:
* run_analysis
* README
* CodeBook

###This repo contains one R script that does the following.
####What has been done to the data

* Downloads the zip data file.
* Merges all of the training and test sets then merges them together.
* Created two new variables in the data set. (Activity and Subject)
* Changes the label names to the variable names that were provided in the features.txt
* Modified the variable names by removing these symbols, "-", "()". 
* The Activity variable had its values converted from using numbers to represent the task to the actual task name.
* Extracts only the mean and standard deviation for each measurement. This brought down the total variables from 563 to 58. 
* Creates another data set with the mean of each variable for each activity and each subject. This made the total number of objects in the data frame drop from 10299 to 180.

###How to use the script

Just load the script into Rstudio and just run it. At the end, you will have two data sets called final and Avg.
The variable name "final", is the  cleaned up data set that test and train data where merged together.
The variable name "Avg" has the mean of each variable for each activity and each subject, from the final data set.

###About the data
The original data was obtained by the use of the accelerometers from the Samsung Galaxy S smartphone, performed by the Human
Activity Recognition.In total, 30 people took part in the experiment, where each person had to perform six 
activities while wearing the smart phone. The smartphone would then recorded 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate.

This experiment created two data sets where 70% of the volunteers was selected for the training data and 30% for the test data.





License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

