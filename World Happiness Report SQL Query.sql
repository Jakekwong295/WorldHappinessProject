-- Checking the Full Data Sheet
select * from World_Happiness_Report

-- Checking for null values in Regional_Indicator Column
select * from World_Happiness_Report
where Regional_Indicator is null

--Updating values for Regional_Indicator Column
Update World_Happiness_Report
SET Regional_Indicator = 'Sub-Saharan Africa'
where Country_Name = 'Angola' 

Update World_Happiness_Report
SET Regional_Indicator = 'Latin America and Caribbean'
where Country_Name = 'Belize' 

Update World_Happiness_Report
SET Regional_Indicator = 'South Asia'
where Country_Name = 'Bhutan' 

Update World_Happiness_Report
SET Regional_Indicator = 'Sub-Saharan Africa'
where Country_Name = 'Central African Republic' 

Update World_Happiness_Report
SET Regional_Indicator = 'Sub-Saharan Africa'
where Country_Name = 'Congo (Kinshasa)'

Update World_Happiness_Report
SET Regional_Indicator = 'Latin America and Caribbean'
where Country_Name = 'Cuba'

Update World_Happiness_Report
SET Regional_Indicator = 'Central and Eastern Europe'
where Country_Name = 'Czechia'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Djibouti'

Update World_Happiness_Report
SET Regional_Indicator = 'Sub-Saharan Africa'
where Country_Name = 'Eswatini'

Update World_Happiness_Report
SET Regional_Indicator = 'Latin America and Caribbean'
where Country_Name = 'Guyana'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Oman'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Qatar'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Somalia'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Somaliland region'

Update World_Happiness_Report
SET Regional_Indicator = 'Sub-Saharan Africa'
where Country_Name = 'South Sudan'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'State of Palestine'

Update World_Happiness_Report
SET Regional_Indicator = 'Sub-Saharan Africa'
where Country_Name = 'Sudan'

Update World_Happiness_Report
SET Regional_Indicator = 'Latin America and Caribbean'
where Country_Name = 'Suriname'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Syria'

Update World_Happiness_Report
SET Regional_Indicator = 'Latin America and Caribbean'
where Country_Name = 'Trinidad and Tobago'

Update World_Happiness_Report
SET Regional_Indicator = 'Middle East and North Africa'
where Country_Name = 'Turkiye'

--Checking total number of rows
select count(*) as row_count from World_Happiness_Report

-- Checking Countries, their continents and regions 
select distinct Country_Name, Continent, Regional_Indicator from World_Happiness_Report

-- Calculating Mean, Median and Standard Deviation for each numeric Column

-- Mean Table
select 
AVG(GDP_Per_Capita) as mean_GDP_per_cap, 
AVG(Log_GDP_Per_Capita) as mean_log_GDP_per_cap,
AVG(Social_Support) as mean_Social_Support,
AVG(Healthy_Life_Expectancy_At_Birth) as mean_life_expectancy,
AVG(Freedom_To_Make_Life_Choices) as mean_freedom,
AVG(Generosity) as mean_Generosity,
AVG(Perceptions_Of_Corruption) as mean_corruptions,
AVG(Positive_Affect) as mean_positive_affect,
AVG(Negative_Affect) as mean_negative_affect,
AVG(Confidence_In_National_Government) as mean_confidence_govt
from World_Happiness_Report

--Median Table
SELECT DISTINCT 
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY GDP_Per_Capita) OVER() AS median_GDP_per_cap,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Log_GDP_Per_Capita) OVER() AS median_Log_GDP_per_cap,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Social_Support) OVER() AS median_Social_Support,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Healthy_Life_Expectancy_At_Birth) OVER() AS median_life_expectancy,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Freedom_To_Make_Life_Choices) OVER() AS median_freedom,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Generosity) OVER() AS median_Generosity,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Perceptions_Of_Corruption) OVER() AS median_corruptions,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Positive_Affect) OVER() AS median_positive_affect,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Negative_Affect) OVER() AS median_negative_affect,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Confidence_In_National_Government) OVER() AS median_confidence_govt
FROM World_Happiness_Report

-- Standard Deviation Table
SELECT
STDEV(GDP_Per_Capita) as STDEV_GDP_per_cap, 
STDEV(Log_GDP_Per_Capita) as STDEV_log_GDP_per_cap,
STDEV(Social_Support) as STDEV_Social_Support,
STDEV(Healthy_Life_Expectancy_At_Birth) as STDEV_life_expectancy,
STDEV(Freedom_To_Make_Life_Choices) as STDEV_freedom,
STDEV(Generosity) as STDEV_Generosity,
STDEV(Perceptions_Of_Corruption) as STDEV_corruptions,
STDEV(Positive_Affect) as STDEV_positive_affect,
STDEV(Negative_Affect) as STDEV_negative_affect,
STDEV(Confidence_In_National_Government) as STDEV_confidence_govt
FROM World_Happiness_Report

-- The Life Ladder column is the actual Happiness score of each country, let's get the mean, median and standard deviation.
SELECT AVG(Life_Ladder) as mean_Score FROM World_Happiness_Report
SELECT DISTINCT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY Life_Ladder) OVER() AS median_Score FROM World_Happiness_Report
SELECT STDEV(Life_Ladder) as STDEV_Score FROM World_Happiness_Report

-- Querying the most recent year (2022) for all countries
SELECT *
FROM World_Happiness_Report
WHERE Year = '2022-01-01'


--Querying Tables for Power BI Data Visualization

--Year Table
SELECT DISTINCT Year
FROM World_Happiness_Report
ORDER BY YEAR

--Country Table
SELECT DISTINCT 
Country_Name, Continent, Regional_Indicator
FROM World_Happiness_Report

-- Fact Table
SELECT 
Country_Name, 
Year, 
Life_Ladder,
GDP_Per_Capita,
Log_GDP_Per_Capita,
Social_Support,
Healthy_Life_Expectancy_At_Birth,
Freedom_To_Make_Life_Choices,
Generosity,
Perceptions_Of_Corruption,
Positive_Affect,
Negative_Affect,
Confidence_In_National_Government
FROM World_Happiness_Report
