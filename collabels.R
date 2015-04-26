collabels <- function(df_table) {
       # Function used to convert the column labels from Vn into
       # names per the features.txt mapping
       
       col_labels <- c("tBodyAccMeanX", "tBodyAccMeanY", "tBodyAccMeanZ",
                            "tBodyAccStdX", "tBodyAccStdY", "tBodyAccStdZ",
                            "tGravityAccMeanX", "tGravityAccMeanY", "tGravityAccMeanZ",
                            "tGravityAccStdX", "tGravityAccStdY", "tGravityAccStdZ",
                            "tBodyAccJerkMeanX", "tBodyAccJerkMeanY", "tBodyAccJerkMeanZ",
                            "tBodyAccJerkStdX", "tBodyAccJerkStdY", "tBodyAccJerkStdZ",
                            "tBodyGyroMeanX", "tBodyGyroMeanY", "tBodyGyroMeanZ", 
                            "tBodyGyroStdX", "tBodyGyroStdY", "tBodyGyroStdZ", 
                            "tBodyGyroJerkMeanX", "tBodyGyroJerkMeanY", "tBodyGyroJerkMeanZ",
                            "tBodyGyroJerkStdX", "tBodyGyroJerkStdY", "tBodyGyroJerkStdZ", 
                            "tBodyAccMagMean", "tBodyAccMagStd", 
                            "tGravityAccMagMean", "tGravityAccMagStd", 
                            "tBodyAccJerkMagMean", "tBodyAccJerkMagStd", 
                            "tBodyGyroMagMean", "tBodyGyroMagStd", 
                            "tBodyGyroJerkMagMean", "tBodyGyroJerkMagStd", 
                            "fBodyAccMeanX", "fBodyAccMeanY", "fBodyAccMeanZ", 
                            "fBodyAccStdX", "fBodyAccStdY", "fBodyAccStdZ", 
                            "fBodyAccJerkMeanX", "fBodyAccJerkMeanY", "fBodyAccJerkMeanZ", 
                            "fBodyAccJerkStdX", "fBodyAccJerkStdY", "fBodyAccJerkStdZ", 
                            "fBodyGyroMeanX", "fBodyGyroMeanY", "fBodyGyroMeanZ", 
                            "fBodyGyroStdX", "fBodyGyroStdY", "fBodyGyroStdZ", 
                            "fBodyAccMagMean", "fBodyAccMagStd",
                            "fBodyBodyAccJerkMagMean", "fBodyBodyAccJerkMagStd", 
                            "fBodyBodyGyroMagMean", "fBodyBodyGyroMagStd", 
                            "fBodyBodyGyroJerkMagMean", "fBodyBodyGyroJerkMagStd")
       i <- 3
       j <- 1
       
       while (i <= ncol(df_table)) {
              names(df_table)[i] <- col_labels[j]

              i <- i + 1
              j <- j + 1
       }
       
       return(df_table)
}