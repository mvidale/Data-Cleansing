Data-Cleansing
==============

The run_analysis.R script is used to load test and training data set, merge them
and generate a tidy data set based on the first six fields containing the mean
and standard deviation data. The structure of the script is as follows:

(1) All the required training and test data files are loaded.

(2) The rows in the activity files are then merged, (10,299 rows of 1 variable).

(3) The X_training and X_test rows are merged, (10,299 rows of 561 variables).

(4) The activity colum is then added, (10,299 rows of 562 variables).

(5) The first 7 colums are then selected (activity, mean and std).

(6) The activites in the first column are then matched with the activity labels.

(7) Descriptive variable names are then added.

(8) Subjects are next loaded and column name set to "Subject" and rows combined.

(9) Subjects are added to the data set in (7).

(10) The aggregation in performed and the results writen to file "tidy.txt".