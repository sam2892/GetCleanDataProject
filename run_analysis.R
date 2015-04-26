run_analysis <- function() {
       # Main function for Getting and Cleaning Data Course Project
       # This function will take the Samsung data files (which must be located in my
       # current working directory), merge the relavent files into a single data set,
       # extract only the mean and standard deviation files (those ending in mean or std),
       # convert numeric values of activities to activity names, rename the columns using
       # values in the features list and then calculate out the average of each subject
       # by activity for each column of data. This will generate 180 rows (30x subjects
       # and 6x types of activities)
       #
       # I have created a few sub functions called from this function to process
       # certain elements of this effort to create a final tidy data set.
       
       # Read in all relavent files, subject information, test and train data
       subtest <- read.table("subject_test.txt")
       subtrain <- read.table("subject_train.txt")
       xtest <- read.table("X_test.txt")
       xtrain <- read.table("X_train.txt")
       ytest <- read.table("y_test.txt")
       ytrain <- read.table("y_train.txt")
       
       # Merge the data into a single structure, Subject & Y info first, then X data
       # Create first a Train Data Frame and a Test DF
       dftrain <- cbind(subtrain, ytrain)
       dftrain <- cbind(dftrain, xtrain)
       
       dftest <- cbind(subtest, ytest)
       dftest <- cbind(dftest, xtest)
       
       # Now merge the Train DF and the Test DF into a single structure based on subjects
       # Then convert to a table for use with dplyr functions
       mergedf <- rbind(dftrain, dftest) 
       mergetbl <- tbl_df(mergedf)
       
       # Rename the first two columns
       names(mergetbl)[1] <- "Subject"
       names(mergetbl)[2] <- "Activity"
       
       # Using the features file, create a new DF with just mean and std columns
       featurestbl <- removecol(mergetbl)
       
       # Change integer value of Activity column to text names
       activitytbl <- activities(featurestbl)
       
       # Label the columns using features_info file (mean and std)
       final <- collabels(activitytbl)
       
       # Finally, take the completed tidy data, and using both the Subject & Activity
       # calculate the mean of all writing into a final DF
       finalavg <- ddply(final, .(Subject, Activity), numcolwise(mean))
       
       # Write this final DF into a tidy data file for project capture
       write.table(finalavg, file="tidydataset.txt", row.names = FALSE)
       
       return(finalavg)
}