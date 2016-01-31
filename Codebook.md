# Code Book
##Data Set Information
* The following information can be found on the source data site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

These signals were used to estimate variables of the feature vector for each pattern:  		
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.		
		
Variable Name	    Variable Type	
tBodyAcc-XYZ	    Continuous	
tGravityAcc-XYZ	  Continuous	
tBodyAccJerk-XYZ	Continuous	
tBodyGyro-XYZ	    Continuous	
tBodyGyroJerk-XYZ Continuous	
tBodyAccMag	      Continuous	
tGravityAccMag	  Continuous	
tBodyAccJerkMag	  Continuous	
tBodyGyroMag	    Continuous	
tBodyGyroJerkMag	Continuous	
fBodyAcc-XYZ	    Continuous	
fBodyAccJerk-XYZ	Continuous	
fBodyGyro-XYZ	    Continuous	
fBodyAccMag	      Continuous	
fBodyAccJerkMag	  Continuous	
fBodyGyroMag	    Continuous	
fBodyGyroJerkMag	Continuous	
		
The set of variables that were estimated from these signals are: 		
Variable Name	                                                                              Variable Type	
mean(): Mean value	                                                                        Continuous	
std(): Standard deviation	                                                                  Continuous	
mad(): Median absolute deviation 	                                                          Continuous	
max(): Largest value in array	                                                              Continuous	
min(): Smallest value in array	                                                            Continuous	
sma(): Signal magnitude area	                                                              Continuous	
energy(): Energy measure. Sum of the squares divided by the number of values. 	            Continuous	
iqr(): Interquartile range 	                                                                Continuous	
entropy(): Signal entropy	                                                                  Continuous	
arCoeff(): Autorregresion coefficients with Burg order equal to 4	                          Continuous	
correlation(): correlation coefficient between two signals	                                Continuous	
maxInds(): index of the frequency component with largest magnitude	                         Continuous	
meanFreq(): Weighted average of the frequency components to obtain a mean frequency	          Continuous	
skewness(): skewness of the frequency domain signal 	                                        Continuous	
kurtosis(): kurtosis of the frequency domain signal 	                                        Continuous	
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.	  Continuous	
angle(): Angle between to vectors.	                                                          Continuous	
		
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:		
Variable Name	    Variable Type	
gravityMean	      Continuous	
tBodyAccMean	    Continuous	
tBodyAccJerkMean	Continuous	
tBodyGyroMean	    Continuous	
tBodyGyroJerkMean	Continuous	
		
Two additional varialbes describe the subject (smartphone) from which the measurements were recorded, and the category of activity being measured.		
Variable Name	    Variable Type	    Category Value
*Subject	          Categorical	      Numeric (1:30)
*Activity	        Categorical	      1 WALKING
*		                                2 WALKING_UPSTAIRS
*		                                3 WALKING_DOWNSTAIRS
*		                                4 SITTING
*		                                5 STANDING
*		                                6 LAYING
