library(dplyr)

#PART 1: Merge the training and test datasets
#read the features of the dataset 
features = read.table("features.txt", stringsAsFactors = FALSE)[,2]
features = gsub("-", "_", features)
features = gsub("\\(|\\)", "", features)

#read the test dataset and add the activity and the subject for each observation
test = read.table("test/X_test.txt")
subject_test = read.table("test/subject_test.txt")
activity_test = read.table("test/y_test.txt")
test = cbind(test, activity_test, subject_test)
names(test) = c(features, "activity", "subject")

#read the training dataset and add the activity and the subject for each observation
train = read.table("train/X_train.txt")
subject_train = read.table("train/subject_train.txt")
activity_train = read.table("train/y_train.txt")
train = cbind(train, activity_train, subject_train)
names(train) = c(features, "activity", "subject")

#join the training and the test datasets and delete all the created datasets before
dataset = rbind(train,test)
rm(activity_train, activity_test, subject_train, subject_test, train, test, features)


#PART 2: Extract the measurements on the mean and sd
features_to_consider = grep("mean|std", names(dataset))
dataset_new = dataset[,features_to_consider]
dataset_new = cbind(dataset[,c(562,563)],dataset_new)

#PART 3: Add the label to each activity
#read activity labels
activity_label = read.table("activity_labels.txt")
names(activity_label) = c("id", "activity_name")
dataset_new = merge(dataset_new, activity_label, by.x = "activity", by.y = "id")
dataset_new = dataset_new[,-1]

#PART5: compute the avg of each variable for each subject and activity
dataset_new = tbl_df(dataset_new)
result = group_by(dataset_new, subject, activity_name)
RESULT = aggregate(result[,2], by=list(result$subject,as.character(result$activity_name)), mean, na.rm = TRUE)
names(RESULT) = c("subject", "activity_name", names(result[,2]))
for(i in 3:80){
  aux = aggregate(result[,i], by=list(result$subject,as.character(result$activity_name)), mean, na.rm = TRUE)
  names(aux) = c("subject", "activity_name", names(result[,i]))
  RESULT = merge(RESULT, aux, by=c("subject", "activity_name"))
}

write.table(RESULT, "result.txt", row.names = FALSE)
