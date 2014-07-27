ActLab <- read.table("UCI HAR Dataset/activity_labels.txt")

trainx <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "\t")
name(trainx) <- "FeaturesVector"
trainy <- read.table("UCI HAR Dataset/train/y_train.txt", sep = " ")
name(trainy) <- "Activity"
trainsub <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = " ")
name(trainy) <- "SubjectID"


testx <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "\t")
name(testx) <- "FeaturesVector"
testy <- read.table("UCI HAR Dataset/test/y_test.txt", sep = " ")
name(testy) <- "Activity"
testsub <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = " ")
name(testsub) <- "SubjectID"


finalx <- rbind(trainx,testx)
finaly <- rbind(trainy,testy)
finalsub <- rbind(trainsub,testsub)
