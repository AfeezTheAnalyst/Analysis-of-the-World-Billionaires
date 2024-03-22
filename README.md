## World Billionaires Data Analytics
![]()
### Introduction
This project focuses on the analysis of _**Billionaire Statistics 2023**_ dataset chosen from the Kaggle.com website. This dataset contains statistics on the world's billionaires, including information about their businesses, industries, and personal details. It provides insights into the wealth distribution, business sectors, and demographics of billionaires worldwide.

The project contains two datasets:  
1. Billionaires Statistics Dataset.csv - Billionaires statistics (2023).  
2. External_gdp_data.csv - External GDP Data Per Country.

_**Sources**:_ The dataset was compiled from various sources, including Forbes and other financial publications.

Link to dataset here:  
[Connect to the datasets here on Kaggle here](https://www.kaggle.com/datasets/nelgiriyewithana/billionaires-statistics-dataset)


### Problem Statement/Research Questions:
 _1. What is the distribution of the age of billionaires in 2023? Are there any notable age trends among the world's billionaires?_  

 _2. What is the distribution of the gender of billionaires in 2023? What is the gender makeup of the billionaire population?_  

 _3. Is there a linear relationship between a billionaire's age at the time of data collection and their final net worth? In other words, does age correlate with wealth for billionaires in 2023?_

  ### Tool (R Programming)
  In this project, we used the R programming language to analyze and generate insight from the dataset. In this analysis we employ the following libraries in R to perform EDA (Exploratory Data Analysis) and answer critical resrach questions. These libraries are:  
  
  1. **Janitor:** A package for data cleaning and data frame tidying.
  2. **Naniar:** A package that works with missing values in R
  3. **Dplyr:** A package for data manipulation and data wrangling in R
  4. Ggplot: Enables that plot charts in R

  ### Skill Demonstrated: 
  In this project, the measure of central tendency, and dispersion were employed to answer some research questions and generate insight from the dataframe.
  * Mean
  * Median
  * Mode
  * IQR (Inter-Quartile Range)
  * Standdard Deviation
  * Correlation and Regresion Analysis
  * Plots (Bar chart, Scatter plot, Histogram)
  * Handling Missing Values
  * Proportion Calculations
  * EDAs
    
We started connecting R console to our datasets, and display some of the data using the "**Head** and the **View** function:  

![Connecting to datasets](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Connecting%20to%20Datasets.png)

Datasets Description Pane  

![View dataset descriptions](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/View%20data%20descriptions.png)  

From this view we can see that our primary file contains 2,640 observations with 35 variables and our secondary dataset is made uo of 22 observations with 4 variables.  

**_Variable name before cleansing:_** 

![Variable name before cleansing](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Varriable_names%20before_cleansing.png)  

**_Variable name after cleansing:_** 

![](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Varriable_names%20After_cleansing.png)

Data cleansing is an essential part of data analhytics to generate insight from any datasets. On this project, I cleaned the variable names using the "Clean name"

 ### **_Analysis of Research Questions:_** 
_Research Question 1:_  

![Research Question 1](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Research%20Q1.png)

_Research Question 2:_  

![Research Question 2](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Research%20Q2.png)

_Research Question 3:_  

![Research Question 3](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Research%20Q3.png)


  ### Findings:
**==>>** The median age, which is also approximately 65.14 years, is very close to the mean age. This indicates that the age distribution of billionaires is relatively symmetric. Some billionaires are notably younger or older than the average. Most billionaires
tend to be in their mid-60s.  

**==>>** Approximately 12.76% of billionaires are female, while around 87.23% are male. This means that the majority of billionaires in 2023 are male, with female makes up a smaller proportion of the billionaire population.  

**==>>** A correlation of 0.06695056 indicates a very weak, positive relationship between age and final net worth among billionaires in your dataset, and it does not provide much predictive power or explanatory value for final net worth based on age.


  ### Link to external resources:

**Link to dataset here:**  
[Connect to the datasets here on Kaggle here](https://www.kaggle.com/datasets/nelgiriyewithana/billionaires-statistics-dataset)

**Link to Source Code in R:**
[Link to Source Code in R](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Billionaires%20Analysis%202023..R)

**Analysis Report:**
[Analysis Report](https://github.com/AfeezTheAnalyst/Analysis-of-the-World-Billionaires/blob/main/Billionaire%20Analysis%20(Report).pdf)
