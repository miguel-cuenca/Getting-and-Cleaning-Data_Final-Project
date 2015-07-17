# Getting and Cleaning Data Final Project

This repository contains 4 files:

1) readme.md:		This file
2) CodeBook.md:		Contains a description of the input and output data and the variables
3) run_analysis.R:	R script that generates the output file "tidy_data"
4) tidy_data		The output file: independent tidy data set with the average of each variable for each activity and each subject.

## Source
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Required R packages:

```{r}
install.package("plyr")
```