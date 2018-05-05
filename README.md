# Getting-and-Cleaning-Data\
#RUN ANALYSIS CODEBBOOK
Open RStudio and set the working directory to destination folder on my desktop.


## Collecting the data
url : contains link to data

Install dplyr and stringr package to help in manipulating the text data.

zippedfile: downloads the url and stores it in the destination folder "projectdata.zip"

unfile: Contains all 28 files in the url needed for the analysis

activity_labels: a lookup table containing the 6 activity descriptions:
* Walking
* Walking_Upstairs
* Walking_Downstairs
* Sitting
* Standing
* Laying

features: Contains variables to be included in the dataset as column names for the tidy dataset cleantable

## Creating the tables
Tables are created by reading the appropriate files from 'unfile' using read.table and merging the resulting datasets together.

Use read.table to read in the following tables:
Subjecttest: Identifies the subject who performed the activity for each window sample. It's range is from 1 to 30
Xtest: Test data, ranging from V1 to V561. Dim: 2947 x 561
Ytest: Labels for Xtest data. Dim: 2947 x 1

Use cbind to merge the tables above together:
Ztest: Merges the labels in Ytest with the data in Xtest into a table. Dim:2947 x 562
testset: A table containing all test data plus a column for the subject performing each activity. A result of column binding Ztest with Subjecttest. Dim: 2947 x 563


Repeat the process above on the training data.
Subjecttrain: Identifies the subject who performed the activity for each window sample. It's range is from 1 to 30
Xtrain: Training data, range from V1 to V561. Dim: 7352 x 561
Ytrain: Labels for Xtrain. Dim: 7352 x 1
Ztrain: Merges the labels in Ytrain to the data in Xtrain. Dim: 7352 x 562
trainset: A table containing all training data plus a column for the subject performing each activity. A result of column binding Ztrain with Subjecttrain. Dim: 7352 x 563


##Combine the resulting trainset and testset tables using row bind


mergeframe: Data frame containing the merged training and test data. Dim: 10299 x 563

Using the colnames funciton, rename the column names of mergeframe to Subject, Activity, and v1- v561 through features2.


## Extract only columns whose names contain mean() or std() using regex and grep.
Subset the mergeframe data set using ''[]'. Use the grep function to get the column indices of columns whose names contain Subject, Activity, mean() or std() and store in df.


df: A new data frame containing only the Activity, Labels and columns in features2 with 'mean()' and 'std()' in the column name. Dim: 10299 x 81

## Creating the clean table
Use the group_by function from dplyr to arrange the 'df' dataset by subject and activity.

findmeans: a new table created by grouping the 'df' dataframe according to the 'Activity' and 'Labels' column. Dim: 10299 x 81
cleantable: The final table containing the means of each of the 66 features in 'df'. Dim: 180 x 68
