{
# 1a. Read and Combine Training files
xTrain <- read.table(file="train/X_train.txt")
yTrain <- read.table(file="train/y_train.txt")
subjTrain <- read.table(file="train/subject_train.txt")
xTrain <-cbind(subjTrain, yTrain, xTrain)


# 1b. Read and Combine Test files
xTest <-read.table(file="test/X_test.txt")
yTest <-read.table(file="test/y_test.txt")
subjTest <-read.table(file="test/subject_test.txt")
xTest <- cbind(subjTest,yTest,xTest)

# 1c. Combine Test and Train into a single data frame
xComb <- rbind(xTrain, xTest)

# 4. Apply descriptive column labels
xColLabel <-read.table(file="features.txt")
xColVector <-as.vector(xColLabel[,2])
xColVector <- make.names(xColVector, unique=TRUE)
xColVector <-append(c("Subject","Activity"), xColVector)
colnames(xComb) <-xColVector

# 2. Filter columns with "mean" or "std" in their columnn names
keywords <-c("mean", "std")
hits <-sapply(keywords, grep, xColVector)
hitsmean <-as.vector(hits$mean)
hitsstd <-as.vector(hits$std)
xColFiltered <-sort(append(hitsstd, hitsmean)) %>% append(c(1,2),0)
xCombFiltered <- select(xComb,xColFiltered)
dim(xCombFiltered)

# 3. Replace Activity Codes with Descriptive Names
activityLabels <-read.table(file="activity_labels.txt")
xCombFiltered$Activity <- activityLabels[xCombFiltered$Activity,2]

# 5. Compute the average of each variable for each activity and each subject
xCombArranged <- arrange(xCombFiltered,Subject, Activity)
tidy_data_set <- aggregate(xCombArranged[,3:81],by=list(xCombArranged$Subject, xCombArranged$Activity),mean)
names(tidy_data_set)[1] <-"Subject"
names(tidy_data_set)[2] <-"Activity"

# 6. Write out the tidy data set to a file for upload
write.table(tidy_data_set,file="tidy_data_set.txt", row.names=FALSE)
}
