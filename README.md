README
======

### Data used
The script run_analysis.R processes movement data measured at Smartlab in Genoa, Italy.[1] 
A description of the raw data can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data measures several components of movement measured by an accelerometer and a gyrometer in a phone attached to the waist of a subject. 30 subjects performed six different daily activities (walking, walking upstairs, walking downstairs, standing, sitting, and laying) as these measurements were taken. The data is seperated randomly into training and testing data. 

### Data Processing
run_analysis.R begins by downloading and unzipping the data, which is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data is contained in a file called 'UCI HAR Dataset', which has a folder for the test data, a folder for the train data, a file called 'activity_labels.txt', which describes how the different activities are coded, a file called 'features_info.txt', which describes the variables measured, a file called 'features.txt', which gives the variable labels, and the README for the data. 

Within the test and train folders are files that have information about the subject ('subject_test/train.txt'), the activity ('Y_test/train.txt'), and the various measurements ('X_test/train.txt'). They also have folders that contain the original measurements, which are unused in this analysis. 

After downloading and reading both sets of data into R ('X_train.txt' and 'X_test.txt'), run_analysis.R merges the two datasets and applies the variable labels described in 'features.txt' with proper formatting. 

The script then subsets all the variables containing either "mean" or "std" in the name, which restricts the data to mean and standard deviation measurements. 

After that, two new variables are added into the dataframe denoting the subject and activity performed, available from the 'subject/Y_test/train.txt' files. 

Finally, the means of each quantitative variable are calculated by subject and activity. These new numbers are then put into a new dataframe with cleaned up labels, which is then written into a comma-seperated .txt file. This new file can be read into R with the write.table function, with sep = ",", and header = TRUE. 

###What this repo contains:

- README.md; the README file for this repository
- run_analysis.R; the R script for processing the data
- CodeBook.md; the code book for the output file
- finaldata.txt; the output file from run_analysis.R
- UCI HAR Dataset; the original data to process

###Data Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
