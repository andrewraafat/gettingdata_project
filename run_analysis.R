ActLab <- read.table("UCI HAR Dataset/activity_labels.txt")

trainx <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "\t")
names(trainx) <- "FeaturesVector"
trainy <- read.table("UCI HAR Dataset/train/y_train.txt", sep = " ")
names(trainy) <- "Activity"
trainsub <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = " ")
names(trainsub) <- "SubjectID"


testx <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "\t")
names(testx) <- "FeaturesVector"
testy <- read.table("UCI HAR Dataset/test/y_test.txt", sep = " ")
names(testy) <- "Activity"
testsub <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = " ")
names(testsub) <- "SubjectID"


finalx <- rbind(trainx,testx)
finaly <- rbind(trainy,testy)
finalsub <- rbind(trainsub,testsub)


finaly$Activity[(finaly$Activity == 1)] <- "WALKING"
finaly$Activity[(finaly$Activity == 2)] <- "WALKING_UPSTAIRS"
finaly$Activity[(finaly$Activity == 3)] <- "WALKING_DOWNSTAIRS"
finaly$Activity[(finaly$Activity == 4)] <- "SITTING"
finaly$Activity[(finaly$Activity == 5)] <- "STANDING"
finaly$Activity[(finaly$Activity == 6)] <- "LAYING"

finaldata <- cbind(finalsub,finalx,finaly)

write.csv(finaldata, "final_data.csv")
