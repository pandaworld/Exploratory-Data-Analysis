# Exploratory-Data-Analysis
## Course Project 1
## Introduction 

The assignment is to take a subset of the provided dataset (“Individual household electric power consumption Data Set”) and reconstruct four plots that are provided in the assignment. The objective was to recreate the four plots using the base plotting system. 

To achieve this the following steps were performed.

## Step 1

Read the data set into a dataframe in R. 
Dataset: Electric power consumption [20Mb]

Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:  

Date: Date in format dd/mm/yyyy  
Time: time in format hh:mm:ss  
Global_active_power: household global minute-averaged active power (in kilowatt)  
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)  
Voltage: minute-averaged voltage (in volt)  
Global_intensity: household global minute-averaged current intensity (in ampere)  
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).  
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.  
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Step 2
Only data from the dates 2007-02-01 and 2007-02-02 are to be used for the plots. To subset the data accordingly, the Date variable was converted from 'character' to 'Date'. The data for the two days was then subsetted separately and then combined into one dataframe (Combined). 
The Time variable was converted from 'character' to 'times'. 
Date and Time were combined to create DT (datetime).

## Step 3
The four plots were created using the Combined dataframe. Each plot was created using a R script.
The repository contains four R scripts, and each has a corresponding plot in a .PNG file.  
  plot1.PNG  /   plot1.R  
  plot2.PNG  /   plot2.R  
  plot3.PNG  /   plot3.R  
  plot4.PNG  /   plot4.R  

The plots can be recreated by running the associated script (source("plotX.R").
The scripts require that the dataset is in the working directory. 
