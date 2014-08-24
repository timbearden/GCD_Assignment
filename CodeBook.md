Getting and Cleaning Data Assignment Code Book
==============================================

Measurements were taken from accelerometer and gyroscope signals from a smartphone attached to each subject's waist as they moved through the six different activities. The data was measured at Smartlab in Genoa, Italy [1]. The original data is available at: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Further descriptions of the variables are available at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Qualitative Variables

The first two variables, Subject and Activity, each denote the subject being described (labeled Subject 1:30), and the activity of the subject while the measurements are being recorded (labeled WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 


##Quantitative Variables

The rest of the variables are the means of various measurements taken by the accelerometer and gyrometer, which take measurements of linear acceleration and angular velocity, respectively. Each variable is bounded within [-1,1]. 

Variables with the prefix 't' denote time domain signals, while the prefix 'f' denotes Fast Fourier Transformations applied to those signals. 

Measurements taken by the gyrometer are described by variables labeled 'BodyGyro', while accelerometer measurements are broken down into body and gravity acceleration signals, labeled 'BodyAcc' and 'GravityAcc'

Some of these measurements describe Jerk signals, denoted by adding 'Jerk', and the magnitudes of many measurements are described by the label 'Mag' (e.g. tBodyAccJerk, tBodyGyroMag, fBodyGyroJerkMag).

The following describe the descriptive statistic used on the set of each measurement: 

- mean: Mean value
- std: Standard deviation
- meanFreq: Weighted average of the frequency components to obtain a mean frequency

(NOTE: this processed data contains means of these measurements from each subject and activity, so these descriptions tell the statistic used in the original, unprocessed data. Therefore, if something has the label 'std', what is being described in this dataset is the mean of a set of standard deviations).

The suffix 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions (not applied to 'Mag' variables).

##List of Variables
Ordered by column number:

1. Subject
2. Activity                    
3. tBodyAccmean.X             
4. tBodyAccmean.Y              
5. tBodyAccmean.Z               
6. tBodyAccstd.X               
7. tBodyAccstd.Y                
8. tBodyAccstd.Z               
9. tGravityAccmean.X            
10. tGravityAccmean.Y           
11. tGravityAccmean.Z            
12. tGravityAccstd.X            
13. tGravityAccstd.Y             
14. tGravityAccstd.Z            
15. tBodyAccJerkmean.X           
16. tBodyAccJerkmean.Y         
17. tBodyAccJerkmean.Z           
18. tBodyAccJerkstd.X           
19. tBodyAccJerkstd.Y            
20. tBodyAccJerkstd.Z           
21. tBodyGyromean.X             
22. tBodyGyromean.Y             
23. BodyGyromean.Z              
24. tBodyGyrostd.X             
25. tBodyGyrostd.Y               
26. tBodyGyrostd.Z              
27. tBodyGyroJerkmean.X          
28. tBodyGyroJerkmean.Y         
29. tBodyGyroJerkmean.Z          
30. tBodyGyroJerkstd.X          
31. tBodyGyroJerkstd.Y           
32. tBodyGyroJerkstd.Z          
33. tBodyAccMagmean            
34. tBodyAccMagstd              
35. tGravityAccMagmean           
36. tGravityAccMagstd         
37. tBodyAccJerkMagmean          
38. tBodyAccJerkMagstd         
39. tBodyGyroMagmean            
40. tBodyGyroMagstd             
41. tBodyGyroJerkMagmean         
42. tBodyGyroJerkMagstd     
43. fBodyAccmean.X           
44. fBodyAccmean.Y              
45. fBodyAccmean.Z               
46. fBodyAccstd.X             
47. fBodyAccstd.Y                
48. fBodyAccstd.Z               
49. fBodyAccmeanFreq.X           
50. fBodyAccmeanFreq.Y          
51. fBodyAccmeanFreq.Z           
52. fBodyAccJerkmean.X          
53. fBodyAccJerkmean.Y           
54. fBodyAccJerkmean.Z          
55. fBodyAccJerkstd.X          
56. fBodyAccJerkstd.Y           
57. fBodyAccJerkstd.Z            
58. fBodyAccJerkmeanFreq.X      
59. fBodyAccJerkmeanFreq.Y       
60. fBodyAccJerkmeanFreq.Z      
61. fBodyGyromean.X      
62. fBodyGyromean.Y             
63. fBodyGyromean.Z              
64. fBodyGyrostd.X             
65. fBodyGyrostd.Y              
66. fBodyGyrostd.Z              
67. fBodyGyromeanFreq.X          
68. fBodyGyromeanFreq.Y         
69. fBodyGyromeanFreq.Z          
70. fBodyAccMagmean         
71. fBodyAccMagstd              
72. fBodyAccMagmeanFreq         
73. fBodyBodyAccJerkMagmean      
74. fBodyBodyAccJerkMagstd     
75. fBodyBodyAccJerkMagmeanFreq  
76. fBodyBodyGyroMagmean 
77. fBodyBodyGyroMagstd        
78. fBodyBodyGyroMagmeanFreq   
79. fBodyBodyGyroJerkMagmean     
80. fBodyBodyGyroJerkMagstd   
81. fBodyBodyGyroJerkMagmeanFreq


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012