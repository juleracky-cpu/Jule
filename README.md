# Module 2 Assignment: Salary Function

## Overview

This project demonstrates basic data processing, error handling, and file handling using Python and R. The assignment uses a salary dataset to retrieve employee information, export employee profiles, and verify the exported data using R.

## Project Objectives

The objective of this project is to:

* Import salary data into a Python environment.
* Create a function that retrieves employee details using their name.
* Process salary data using a Python dictionary.
* Implement error handling to manage incorrect inputs.
* Export employee details to CSV files.
* Compress the employee profile files into a ZIP folder.
* Use R to unzip the folder and display the employee data.

## Tools Used

* Python (Jupyter Notebook)
* R (RStudio)
* Libraries: pandas, os, zipfile

## Dataset

The dataset used in this project is **Total.csv**, which contains employee salary information including:
* Employee Name
* Job Title
* Base Pay
* Overtime Pay
* Other Pay
* Benefits
* Total Pay
* Year

## Python Implementation

### 1. Import the Dataset

The dataset is loaded using the pandas library.

Example:

```python
import pandas as pd
df = pd.read_csv("C:/Users/Administrator/Desktop/module 2_assignment_jule/Total.csv")
```

### 2. Process Data Using a Dictionary

The dataset is converted into a dictionary where each employee name acts as the key and their salary details are stored as values.

### 3. Employee Lookup Function

A function was created to retrieve employee details by entering the employee name.

Example:

```python
def get_employee_details(employee_name):
    try:
        if employee_name in salary_dict:
            return salary_dict[employee_name]
        else:
            return "Employee not found in dataset."
```

### 4. Error Handling

Error handling is implemented to manage cases where an employee name does not exist in the dataset.

### 5. Export Employee Details

Employee profiles are exported as CSV files into a folder named:

**Employee Profile**

### 6. Zip the Folder

The folder containing employee profiles is compressed into:

**Employee_Profile.zip**

This file is used for the R portion of the assignment.

## R Implementation

### Unzip and Display Data

An R script is used to unzip the employee profile folder and display the employee data.

Example:

```r
setwd("C:/Users/Administrator/Desktop/module 2_assignment_jule")

unzip("Employee_Profile.zip", exdir="unzipped_data")

files <- list.files("unzipped_data", recursive=TRUE, full.names=TRUE)

employee_data <- read.csv(files[1])

print(employee_data)
```

## File Structure

module 2_assignment_jule
│
├── Total.csv
├── Salary_Function_Analysis.ipynb
├── Employee Profile
│   ├── employee1.csv
│   ├── employee2.csv
│   └── ...
├── Employee_Profile.zip
├──unzip_employee_profile
├──unzipped_data
└── README.md

## How to Run the Project

### Python

1. Open the Jupyter Notebook file.
2. Run all cells sequentially.
3. The notebook will:

   * Import the dataset
   * Process employee salary data
   * Export employee profiles
   * Create a ZIP file containing the profiles.

### R

1. Open RStudio.
2. Set the working directory to the assignment folder.
3. Run the provided R script to unzip the folder and display employee data.

## Conclusion

This project demonstrates how Python can be used for data processing and file handling while R can be used to verify exported data. The integration of both languages helps ensure that the employee data was correctly processed and stored.

