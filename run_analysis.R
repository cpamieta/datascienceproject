#downloads and opens the zip data files
temp = tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)


#data cleaning for the first set of data, the train
train = read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
name = read.table(unz(temp, "UCI HAR Dataset/features.txt"))

name1 = name[,2]

#renames the variables 
colnames(train) = name1
traine = gsub("\\()","",names(train),)
traine1 = gsub("-","",(traine),)
colnames(train) = traine1

train1 = read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
colnames(train1) = ("Subject")

train2 = read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
colnames(train2) = ("Activity")
#renames the values for the activity column
train2 = replace(train2,train2==1, "WALKING")
train2 = replace(train2,train2==2,"WALKING_UPSTAIRS")
train2 = replace(train2,train2==3,"WALKING_DOWNSTAIRS")
train2 = replace(train2,train2==4,"SITTING")
train2 = replace(train2,train2==5,"STANDING")
train2 = replace(train2,train2==6,"LAYING")
#combines all three data sets into one
merr = cbind(train1,train)
merr1 = cbind(train2,merr)

#The second data set, the test. Goes through the same changes as the first.

test = read.table(unz(temp, "UCI HAR Dataset/test/X_test.txt"))

colnames(test) = traine1

test1 = read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
colnames(test1) = ("Subject")

test2 = read.table("y_test.txt")
colnames(test2) = ("Activity")
test2 = replace(test2,test2==1, "WALKING")
test2 = replace(test2,test2==2,"WALKING_UPSTAIRS")
test2 = replace(test2,test2==3,"WALKING_DOWNSTAIRS")
test2 = replace(test2,test2==4,"SITTING")
test2 = replace(test2,test2==5,"STANDING")
test2 = replace(test2,test2==6,"LAYING")


mer = cbind(test1,test)
mer1 = cbind(test2,mer)




#combines both data frames into one, and only pulls out the mean and standard deviation variables.
final = rbind(merr1,mer1)
finals = final[c(1:8,43:48,83:88,123:128,163:168,203,204,216,217,229,230,242,243,255,256,268:273,347:352,426:431,505,506,518,519,531,532,544,545)]

#Creates a new data frame that finds the "average of each variable for each activity and each subject. "
 ddatt = aggregate(. ~ Activity  + Subject , data = finals, FUN = mean)
