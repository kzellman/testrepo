features = raw data from "features.txt"
activities = raw data from "activity_labels.txt"
x_train = raw data from "train/X_train.txt"
y_train = raw data from "train/y_train.txt"
subject_train = raw data from "train/subject_train.txt"
X_test = raw data from "test/X_test.txt"
y_test = raw data from "test/y_test.txt"
subject_test = raw data from "subject_test.txt"

testData = merged test set including x_test, y_test, and subject_test

trainData = merged training data including x_train, y_train, and subject_train

mergedData = merged dataset including testData and trainData

colname = function transforming column names

actlabel = functio transforming actitvity labels

mergedlabeleddata = function combining colname and actlabel

mergedmean = means of mergedData
mergedsd = standard deviations of mergedData

cleandata = function melting and recasting dataset

finaldata = function writing cleandata and mergedlabeldata into a single text file

Feature Names:

actame
subject
tBodyAccmeanX
tBodyAccmeanY
tBodyAccmeanZ
tBodyAccsdX
tBodyAccsdY
tBodyAccsdZ
tGravityAccmeanX
tGravityAccmeanY
tGravityAccmeanZ
tGravityAccsdX
tGravityAccsdY
tGravityAccsdZ
tBodyAccJerkmeanX
tBodyAccJerkmeanY
tBodyAccJerkmeanZ
tBodyAccJerksdX
tBodyAccJerksdY
tBodyAccJerksdZ
tBodyGyromeanX
tBodyGyromeanY
tBodyGyromeanZ
tBodyGyrosdX
tBodyGyrosdY
tBodyGyrosdZ
tBodyGyroJerkmeanX
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ
tBodyGyroJerksdX
tBodyGyroJerksdY
tBodyGyroJerksdZ
tBodyAccMagmean
tBodyAccMagsd
tGravityAccMagmean
tGravityAccMagsd
tBodyAccJerkMagmean
tBodyAccJerkMagsd
tBodyGyroMagmean
tBodyGyroMagsd
tBodyGyroJerkMagmean
tBodyGyroJerkMagsd
fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccsdX
fBodyAccsdY
fBodyAccsdZ
fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerksdX
fBodyAccJerksdY
fBodyAccJerksdZ
fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrosdX
fBodyGyrosdY
fBodyGyrosdZ
fBodyAccMagmean
fBodyAccMagsd
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagsd
fBodyBodyGyroMagmean
fBodyBodyGyroMagsd
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagsd