##Tocheee
##Getting and Cleaning Data Coursera
##Course Project


## Download link 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"#grab url

## Install dplyr package to use summarise_all and group_by functions when organising data
#library(dplyr) uncomment to download 

## Install stringr package to aid in renaming the columns
#library(stringr) uncomment to download

## Download the url in zippedfile and unzip it into "unfile"
zippedfile <- download.file(url,destfile = "projectdata.zip") #download project data
unfile <- unzip("projectdata.zip")

## Extract the files needed for the assignment
activity_labels <-  (read.table(unfile[1]))  ## activity names for class labels
features <- (read.table(unfile[[2]])) ## list of all features in the dataset
features2 <- as.character(features[,2])

## Creating a table from the test data
Subjecttest <- read.table(unfile[14])   
Xtest <- read.table(unfile[15])
Ytest <- read.table(unfile[16])
Ztest <- cbind(Ytest,Xtest)
testset <- cbind(Subjecttest,Ztest)

## Creating a table from the training data 
Subjecttrain <- read.table(unfile[26])
Xtrain <- read.table(unfile[27])
Ytrain <- read.table(unfile[28])
Ztrain <- cbind(Ytrain,Xtrain)
trainset <- cbind(Subjecttrain,Ztrain)

## Merging the training and test data together in "mergeframe"
mergeframe <- rbind(testset,trainset)
colnames(mergeframe) <- c("Subject","Activity", features2)

## Extract only columns whose names contain mean or std
df <- mergeframe[,grep("Subject|Activity|mean\\(\\)|std\\(\\)",colnames(mergeframe))]

## Assign descriptive names to each activity using a lookup table
df$Activity <- activity_labels[,2][match(df$Activity, activity_labels[,1])]

## Creating the final tidy table
findmeans <- group_by(df,Subject = Subject,Activity = Activity) 
cleantable <- summarise_all(findmeans,mean)

## Cleanup columnnames, using sub and gsub to remove spaces and add "frequency" and "time"
colnames(cleantable) <- sub("^f.{4}","frequencybody",names(cleantable))
colnames(cleantable) <- sub("^t.{4}","timebody",names(cleantable))
colnames(cleantable) <- sub("^f.+ity","frequencygravity",names(cleantable))
colnames(cleantable) <- sub("^t.+ity","timegravity",names(cleantable))
colnames(cleantable) <- sub("bodyBody","body",names(cleantable))

cleantable[1:10,1:10] ##see a preview of the clean data
  
write.table(as.data.frame(cleantable),"courseprojecttable.txt", row.names = FALSE, sep = "\t")

##Use this code to read my cleantable
data <- read.table("courseprojecttable.txt", header = TRUE)
head(data)
