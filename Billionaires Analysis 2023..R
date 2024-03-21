b_data <- read.csv("Billionaires Statistics Dataset.csv")
View(b_data)
external_gdp_data <- read.csv("external_gdp_data.csv")

# HAVING A FEEL OF OUR BILLIONAIRES DATASET

library(janitor)
b_data <- clean_names(b_data)
View(b_data)
head(b_data)
is.na(b_data)
complete.cases(b_data)
is.numeric(b_data)


library(naniar)
library(zoo)
library(dplyr)

str(b_data)

# Finding columns that contains NAs in the dataset
column_NAs <- colnames(b_data)[ apply(b_data, 2, anyNA)]
print(column_NAs)

# Checking the missing values in the dataset
check_NAs <- is.na(b_data)

# check the proportion(arithmetic mean) of missing values in the dataset
missing_values <- mean(check_NAs)
print(missing_values)

# Calculate the percentage of missing values

missing_percentage <- missing_values*100
print(missing_percentage)

# Calculating the total number of missing values in the entire dataset
total_missing_values <- sum(is.na(b_data))
print(total_missing_values)

# Calculate the percentage of missing values for each variable
missing_summary <- miss_var_summary(b_data)
print(missing_summary)

# Calculate the mean age, excluding missing values
mean_age <- mean(b_data$age, na.rm = TRUE)
print(mean_age)

# Replacing missing values with the mean age
b_data$age[is.na(b_data$age)] <- mean_age

# Removing the Commas and Dollar Signs in the gdp_country variable

b_data$gdp_country <- gsub(",", "", b_data$gdp_country)
b_data$gdp_country <- gsub("\\$", "", b_data$gdp_country)


# convert to numeric

b_data$gdp_country <- as.numeric(b_data$gdp_country)
summary(b_data$gdp_country)

# Filtering rows with missing GDP values:

b_data_missing_gdp <- b_data %>% 
  filter(is.na(b_data$gdp_country))
print(b_data_missing_gdp)

#Group the data by the "country" column:

b_data_missing_gdp_grouped <- b_data_missing_gdp %>% group_by(country)

# Summarizing the count of billionaires in each country with missing GDP data:

b_data_missing_gdp_summary <- b_data_missing_gdp_grouped %>% 
  summarize(b_data_count = n())

print(b_data_missing_gdp_summary)

# Update the "gdp_country" column in the "billionaires" dataset with missing 
# values from "external_gdp_data"
b_data$gdp_country <- ifelse(is.na(b_data$gdp_country), 
                                   external_gdp_data$gdp_country[match(b_data$country, 
                                  external_gdp_data$country)],
                                   b_data$gdp_country)

# RESEARCH QUESTION ANALYSIS
library(ggplot2)

# 1. What is the distribution of the age of billionaires in 2023? 
#    Are there any notable age trends among the world's billionaires?

mean(b_data$age)
median(b_data$age)
sd(b_data$age)
IQR(b_data$age)

#    Using the Histogram chart assess the age of billionaires dataset.
#    Age: (Quantitative)
    hist(b_data$age)
    
# 2. What is the distribution of the gender of billionaires in 2023? 
#    What is the gender makeup of the billionaire population?
#    Variable: Gender (Categorical)
    
    billionaire_gender <- b_data$gender
    gender_frequency <- table(gender) 
    print(gender_frequency)
    
#   Calculate the percentage and proportion of billionaires' gender
    prop.table(gender_frequency)
    prop.table(gender_frequency) * 100
    
#   Visualizing bar chart of billionaires gender
    colors <- c("red","blue")
    barplot(gender_frequency, col = colors, xlab = "Gender", main = "Distribution of Gender")
    
# 3.Is there a linear relationship between a billionaire's age at the time
#   of data collection and their final net worth? In other words, does age
#   correlate with wealth for billionaires in 2023? 
    
    plot(b_data$age, b_data$final_worth, 
         main = "Relationship Between Billionaires Age & Final Worth", 
         xlab = "Age", 
         ylab = "Final Worth", 
         col = "blue", 
         pch = 1, 
         cex.main = 0.8)
         
# Correlation and regression analysis
    
    correlation <- cor(b_data$final_worth, b_data$age) 
    print(correlation)
    
# Report of this analysis will be in the Akinleye_Project4.pdf file.