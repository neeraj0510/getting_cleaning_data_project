# Getting and Cleaning Data Project

-Neeraj

This repository/repo is for the submission of the course project in the Coursera course Getting and Cleaning Data from the Data Science Specialization from JHU.


# Overview

This project is to for the collection and cleaning of data into a dataset in R, that can be further used in downstream analysis.
The project question told the location to download all the relevant files and get started.
The code is attached in this repo- 'run_analysis.R', and the codebook explaining the different variables is in 'codebook.md'

The basic details related to the data and the project can be seen at - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

And, the dataset can be downloaded from - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


# Setting the working directory

Once you have obtained and unzipped the source text files, you will need to set the relevant folder as the working directory in R.
The very first thing done in my R code is setting the working directory to the location containing all the relevant files. This is important for R to be able to read the files.


# Project Process Summary

I have made my code 'run_analysis.R' very informative. I have written several comments, on every chunk of code, to help easily understand what is happening through the code.

The following is briefly a summary description of what my code does to fulfill the project requirements:

1) The first chunk (heading of chunks in the code) of my code merges the training and the test sets to create one data set.
2) The second chunk cleans the data, gives clean variable names to the tables, and extracts only the measurements on the mean and standard deviation for each measurement. This fulfills points 2 and 4. 
3) The third chunk uses descriptive activity names to name the activities in the data set. 
4) The fourth chunk of code creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# CodeBook

The code book explains the variables in the analysis, and is present in this repo at codebook.md file.