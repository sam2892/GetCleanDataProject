activities <- function(df_table) {
       # Function used to convert the numeric values of activities into
       # names per the activities_labels.txt mapping
       
       activity_labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING",
                            "STANDING", "LAYING")
       i <- 1
       
       df_table$Activity <- as.character(df_table$Activity)
       
       while (i <=6) {
              df_table$Activity[df_table$Activity == as.character(i)] <- activity_labels[i]

              i <- i + 1
       }
       
       return(df_table)
}