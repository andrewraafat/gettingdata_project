trainx <- read.table("UCI HAR Dataset/train/X_train.txt", sep = " ", fill = T)

trainy <- read.table("UCI HAR Dataset/train/y_train.txt", sep = " ")

trainsub <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = " ")


testx <- read.table("UCI HAR Dataset/test/X_test.txt", sep = " ", fill = T)

testy <- read.table("UCI HAR Dataset/test/y_test.txt", sep = " ")

testsub <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = " ")
