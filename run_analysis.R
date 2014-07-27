#Reading in necessary files and assigning col names
features <- read.table("features.txt", col.names=c("featid", "featname"))
activities <- read.table("activity_labels.txt", col.names=c("actid", "actname"))
x_train <- read.table("X_train.txt", col.names=features$featname,check.names=FALSE)
y_train <- read.table("y_train.txt", col.names=c("aid"))
subject_train <- read.table("subject_train.txt", col.names=c("subject"))
x_test <- read.table("X_test.txt", col.names=features$featname,check.names=FALSE)
y_test <- read.table("y_test.txt", col.names=c("aid"))
subject_test <- read.table("subject_test.txt", col.names=c("subject"))

#Merging training and test sets and transforming col names/act labels
testData <- cbind(x_test,y_test)
testData <- cbind(testData,subject_test)
trainData <- cbind(x_train,y_train)
trainData <- cbind(trainData,subject_train)

mergedData <- rbind(testData,trainData)

colname <- function() {
  data <- mergedData
  cnames <- colnames(data)
  cnames <- gsub("\\.+mean\\.+", cnames, replacement="mean")
  cnames <- gsub("\\.+sd\\.+",  cnames, replacement="sd")
  colnames(data) <- cnames
  data
}

actlabel <- function(data) {
  activities$actname <- as.factor(activities$actname)
  newdata <- merge(data, activities)
  newdata
}

# Combine training and test data sets and add the activity label as another column
mergedlabeleddata <- function() {
 actlabel(colname())
}

#Return mean and sd for features in merged data
mergedmean <- sapply(mergedData, mean, na.rm = T)
mergedsd <- sapply(mergedData, sd, na.rm = T)

cleandata <- function(mydata) {
  # melting the dataset
  myvars = c("actid", "actname", "subject")
  diffvars = setdiff(colnames(mydata), myvars)
  melteddata <- melt(mydata, id=myvars, measure.vars=diffvars)
  
  # recasting the data
  dcast(melteddata, actname + subject ~ variable, mean)    
}

# Create the tidy data set and save it on to the named file
finaldata <- function(createtidy) {
  tidy <- cleandata(mergedlabeleddata())
  write.table(tidy, createtidy)
}

finaldata("tidydata.txt")
