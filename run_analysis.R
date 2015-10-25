# 1st Chunk

setwd("C:/Users/neeraj.chaddha/Desktop/Coursera/Data Science Specialization JHU/03 Getting and Cleaning Data/project/project")
# In the above line, I set the working directory to a location of my choice, containing all the files that will be needed in this analyis

#Once the set working directory has all the required files, this code will product the results we want to see.
# Since the data files are fixed and nothing is random, I haven't set a seed.


data_test<-read.table("X_test.txt")  #Importing the Data for Test
student_ID_test<-read.table("subject_test.txt")  #Importing the Student IDs for Test data
activity_test<-read.table("y_test.txt")  #Importing the Activity ID for Test data
test<-cbind(student_ID_test,activity_test,data_test)  #merging/binding all of this in 1 data frame


data_train<-read.table("X_train.txt")
student_ID_train<-read.table("subject_train.txt")
activity_train<-read.table("y_train.txt")
train<-cbind(student_ID_train,activity_train,data_train)   #ALL Analogous/same as above for test


total_data<-rbind(test,train)  #All data binded together as asked in Step 1 of project



# 2nd Chunk
features<-read.table("features.txt")  #Importing the dataframe containing variable names
names<-features$V2
names(total_data)<-c("student.id","activity",as.character(names))  #Assigning variable names to data frame


names(total_data)<-gsub("\\()","", names(total_data))  #Cleaning names of columns for Step 4 of project

valid_column_names <- make.names(names=names(total_data), unique=TRUE, allow_ = TRUE)
names(total_data) <- valid_column_names  #Changing names of duplicate Column names and assigning to dataset, as Step 4 of Project



library(dplyr)
data_mean_sd<-select(total_data,student.id,activity,contains(".mean."),contains(".std."),ends_with(".mean"),ends_with(".std"))
#In above line, I use contains function and use '.' on both sides of 'mean', 
# or ends with '.mean' type condition, 
# so that only variables on the mean and standard deviation for each measurement are extracted (as asked in step 2 of project)
#, and variables like meanFreq etc. are not extracted.


# 3rd Chunk
k<-names(data_mean_sd)[match(names(total_data),names(data_mean_sd))]
k<-k[!is.na(k)]
data_mean_sd<-select(total_data,one_of(k))  #Extracting only relevant columns, i.e, Student ID, Activity, and all mean and sd measurements of the measurements
data_mean_sd$activity<-factor(data_mean_sd$activity,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
#In the above line of code, I use descriptive activity names to name the activities as Step 3 of project

#Now the data is merged (training and test), relevant columns are extracted (mean and std), 
# columns have been named properly, and descriptive activity names have been used in the activity column


#4th Chunk
ans<-data_mean_sd%>%
  group_by(student.id,activity)%>%
  summarise_each(funs(mean))  #Performing Step 5, creating an independent tidy data set with the average of each variable for each activity and each subject.

ans<-as.data.frame(ans)  #Converting ans to data.frame type in R


names(ans)[3:ncol(ans)]<-paste("Average.",names(ans)[3:ncol(ans)],sep="")  #Renaming the columns after collapsing and finding the average of all variables for
# different subjects and activities.

View(ans) #Viewing the final tidy dataset with the averages of all variables for the students ids and activities


write.table(ans,"tidy_output_avg.txt",sep="\t",row.names = FALSE,col.names = TRUE)
#In the output file, since the column Activity has lables of different lengths (eg. "walking" and "walking_upstairs"),
# you will see the numbers don't necessarily seem to be below one another, but it is correct and
# readable back into R using: data<-read.table("tidy_output_avg.txt",header=TRUE)

#After you open the link from amazonaws and save it as txt file, you can open it in notepad++ to see the dataset.


#Thank you for your time in assessing my assignment. Regards!

