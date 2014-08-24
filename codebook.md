# Codebook for run_analysis.R

|Variable |Type | Description|
|---------|-----|------------|
|x_train | (df)            | X_train.txt data|
|y_train | (df)            | y_train.txt data|
|x_test | (df)             | X_test.txt data|
|y_test | (df)             | y_test.txt data|
|activity_labels | (df)    | activity_labels.txt data|
|merged_activities | (df)  | y_train and y_test rows|
|x_merged | (df)           | x_train and x_test rows|
|x_merged | (df)           | merged_activities and x_merged|
|x_merged_mean_std | (df)  | activities and mean and std column data|
|subject_train | (df)      | subject_train.txt data|
|subject_test | (df)       | subject_test.txt data|
|subjects | (df)           | subject_train and subject_test rows|
|tidy | (df)               | subjects and x_merged_mean_std columns|
|aggregated_data | (df)    | mean aggregated data grouped by subject and activity|

## SAMPLE OUTPUT

"Activity" "Subject" "mean.mean_X" "mean.mean_Y" "mean.mean_Z" "mean.std_X" "mean.std_Y" "mean.std_Z"
"LAYING" 1 0.22159824394 -0.0405139534294 -0.11320355358 -0.9280564692 -0.83682740562 -0.826061401628
"SITTING" 1 0.261237565425532 -0.00130828765170213 -0.104544182255319 -0.977229008297872 -0.922618641914894 -0.93958629106383
"STANDING" 1 0.278917629056604 -0.0161375901037736 -0.110601817735849 -0.995759901509434 -0.973190056415094 -0.979775876981132


