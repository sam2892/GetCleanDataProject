This README file discusses briefly how the main run_analysis.R file works, dependices and other notes

The run_analysis script was written in R for the final Getting & Cleaning Data project.  This script also requires that you download and source helper scripts which includes activities.R, collabels.R and removecol.R. Once sourced, you can run the run_analysis script as such:

       final_df <- run_analysis()
              
The returned value is actually a data.table from the dplyr library which should be loaded as well as the plyr library (load plyr first, the dplyr). This returned value is the final tidy data set as required for the project and is also written to a file, tidydataset.txt.