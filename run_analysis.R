## Peer-graded Assignment
## Guðfinna Kristins
## Getting and cleaning data week 4
time <- Sys.time()
zipfile <- "getdata_dataset.zip"

# Download and unzip
if (!file.exists(zipfile)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
        download.file(fileURL, zipfile)
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(zipfile="./data/Dataset.zip",exdir="./data") 
}

# Load the .txt files "activity labels" and "features"
activityLabels <- read.table("activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("features.txt")
features[,2] <- as.character(features[,2])

# Extract the needed mean and standard deviation
featuresneeded <- grep(".*mean.*|.*std.*", features[,2])
featuresneeded_names <- features[featuresneeded,2]
featuresneeded_names = gsub('-mean', 'Mean', featuresneeded_names)
featuresneeded_names = gsub('-std', 'Std', featuresneeded_names)
featuresneeded_names <- gsub('[-()]', '', featuresneeded_names)

# Load "train" and "test" datasets
train <- read.table("train/X_train.txt")[featuresneeded]
trainActivities <- read.table("train/Y_train.txt")
trainSubjects <- read.table("train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("test/X_test.txt")[featuresneeded]
testActivities <- read.table("test/Y_test.txt")
testSubjects <- read.table("test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# Merge datasets 
tidyData <- rbind(train, test)
# Add labels
colnames(tidyData) <- c("subject", "activity", featuresneeded_names)

# Make "activities" and "subjects" factors
tidyData$activity <- factor(tidyData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
tidyData$subject <- as.factor(tidyData$subject)

tidyData.melted <- melt(tidyData, id = c("subject", "activity"))
tidyData.mean <- dcast(tidyData.melted, subject + activity ~ variable, mean)

write.table(tidyData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
