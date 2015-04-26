removecol <- function(df_table) {
       # Function to go thru and remove all of the columns that do not represent
       # a mean or standard deviation value from the original data. This has been
       # written based on the original file and it's formatting. Any change to
       # that file would require this function be changed as well as hard coded
       # to patterns existing in original data.
       #
       # Another way to solve this same problem would be to select() each of the
       # column names to keep, such as select(df_table, V1, V2, V3, V4, V5, V6, V41, V42, etc)
       
       i <- 7
       j <- i + 33
       while (i < 200) {
              df_table <- select(df_table, -(num_range("V", i:j)))

              i <- j + 7
              j <- i + 33
       }
       
       i <- 203
       j <- 213
       while (i < 265) {
              df_table <- select(df_table, -(num_range("V", i:j)))
              
              i <- i + 13
              j <- j + 13
       }
       
       i <- 272
       j <- 344
       while (i < 502) {
              df_table <- select(df_table, -(num_range("V", i:j)))
              
              i <- i + 79
              j <- j + 79
       }
       
       i <- 505
       j <- 515
       while (i < 541) {
              df_table <- select(df_table, -(num_range("V", i:j)))
              
              i <- i + 13
              j <- j + 13
       }
       
       df_table <- select(df_table, -(num_range("V", 544:561)))
       return(df_table)
}