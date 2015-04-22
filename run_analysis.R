## loading packages
library(reshape2)

## Function 1:
## (1) If necessary: Download and unzip the data 
initDatasets <- function () {
        # download the data & print status
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        if (!file.exists("datasets.zip")){
                cat ("downloading datasets ... \n")
                download.file(url, "datasets.zip")
        }
        # unzip the data & print status
        if (!file.exists("UCI HAR Dataset")){
                cat ("unzipping datasets ... \n")
                unzip("datasets.zip")
        }
        cat ("datasets initialized. \n")
}

## Function 2:
## (1) Merge the training and the test sets to create one data set (task 1)
## (2) Appropriately label the data set with descriptive variable names (task 4)
## (3) Uses descriptive activity names to name the activities (task 3)
## (4) Push "mergedData" object to the global environment
mergeDatasets <- function(){
        cat ("merging datasets ... \n")
        
        ## read test data
        test <- read.table("./UCI HAR Dataset/test/X_test.txt")
        test.activityID <- read.table("./UCI HAR Dataset/test/y_test.txt")[,1]
        test.subjectID <- read.table("./UCI HAR Dataset/test/subject_test.txt")[,1]
        
        ## merge test data to a single dataframe
        test$activityID <- test.activityID
        test$subjectID <- test.subjectID
        
        ## read train data
        train <- read.table("./UCI HAR Dataset/train/X_train.txt")
        train.activityID <- (read.table("./UCI HAR Dataset/train/y_train.txt"))[,1]
        train.subjectID <- read.table("./UCI HAR Dataset/train/subject_train.txt")[,1]
        
        ## merge train data to a single dataframe
        train$activityID <- train.activityID
        train$subjectID <- train.subjectID
        
        ## merge test data and train data
        mergedData <- rbind(test, train)
                
        ## read variable names and activity labels
        featureLabels <- read.table("./UCI HAR Dataset/features.txt")
        activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
        
        ## add variable names and activity factor labels to merged data
        names(mergedData) <- c(as.vector(featureLabels$V2),"activityID", "subjectID")
        mergedData$activityID <- factor(mergedData$activityID, 
                                levels = activityLabels$V1,
                                labels = activityLabels$V2)
        
        ## push mergedData object to global environment
        mergedData <<- mergedData
        cat ("datasets merged. \n")
}

## Function 3:
## (1) Subset the dataframe "mergedData"
##     Extracts only the measurements on the mean and standard deviation for 
##     each measurement (task 2)
##     Selection: all the mean() and average() measurements, without totals
## (2) Push "dataSelection" object to the global environment
subsetDataset <- function () {
        ## create filter string for column selection
        measurementSelection <- names(mergedData)[
                        grepl("mean\\(\\)", names(mergedData))|
                        grepl("std\\(\\)", names(mergedData))]
        columnSelction <- c("subjectID", "activityID", measurementSelection)
        filter <- names(mergedData) %in% columnSelction
        
        ## select filter variables in dataset
        dataSelection <- mergedData[, filter]
        
        ## rename variables for easier handling
        names(dataSelection) <- gsub(c("\\("), "", names(dataSelection))
        names(dataSelection) <- gsub(c("\\)"), "", names(dataSelection))
        
        ## push the dataSelection object to the global environment
        dataSelection <<- dataSelection
        cat ("dataset subsetted. \n")
}

## Function 4:
## (1) Create a new dataset with the average of each variable for each 
##     activity and each subject in dataset "dataSelection" (task 5)
## (2) Push "averagedDataset" object to the global environment
averagedDataset <- function(){
        ## define which variables are the the ids and which are the values
        ids <- c("subjectID", "activityID")
        values <- names(dataSelection[1:66])
        
        ## melt and cast data
        melted <- melt(dataSelection, id=ids, measure.vars=values)
        casted <- dcast(melted, subjectID+activityID ~ values, mean)
        
        ## push the averaged object to the global environment
        averagedDataset <<- casted
        cat ("dataset averaged. \n")
}

## Execute functions
initDatasets()
mergeDatasets()
subsetDataset()
averagedDataset()

## Write averagedDataset to csv and txt files
write.table(averagedDataset, "tidyData.txt", row.name=FALSE)
write.csv(averagedDataset, "tidyData.csv")
