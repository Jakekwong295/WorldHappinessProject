# World Happiness Report Analysis

This project analyzes data from the annual World Happiness Report, which ranks countries by their level of happiness and well-being. The data includes factors such as GDP, social support, and life expectancy, which are used to calculate a Happiness Score for each country.

The goal of this project is to explore the factors that contribute to happiness and identify patterns and trends in the data. The analysis includes visualizations such as scatter plots, bar charts and maps to help visualize the relationships between different variables.

The project also includes SQL queries to manipulate and aggregate the data, as well as DAX formulas for creating calculated measures in Power BI. The final report is presented in a Power BI dashboard, which allows users to interact with the data and explore the findings in more detail.

The main findings of the analysis are summarized in the conclusion section of the report, which provides insights into the factors that contribute to happiness at the country level. The project also includes recommendations for future research and analysis to further explore the relationship between happiness and other socioeconomic factors.

# About the Dataset

Detailed information about each of the Predictors

1. Log GDP per capita is in terms of Purchasing Power Parity (PPP) adjusted to a constant 2017 international dollars, taken from the World Development Indicators (WDI) by the World Bank (version 17, metadata last updated on January 22, 2023). See Statistical Appendix 1 for more details. GDP data for 2022 are not yet available, so we extend the GDP time series from 2021 to 2022 using country-specific forecasts of real GDP growth from the OECD Economic Outlook No. 112 (November 2022) or, if missing, from the World Bank’s Global Economic Prospects (last updated: January 10, 2023), after adjustment for population growth. The equation uses the natural log of GDP per capita, as this form fits the data significantly better than GDP per capita.

2. The time series for Healthy life expectancy at birth is constructed based on data from the World Health Organization (WHO) Global Health Observatory data repository, with data available for 2005, 2010, 2015, 2016, and 2019. To match this report’s sample period (2005-2022), interpolation and extrapolation are used. See Statistical Appendix 1 for more details.

3. Social support (0-1) is the national average of the binary responses (0=no, 1=yes) to the Gallup World Poll (GWP) question “If you were in trouble, do you have relatives or friends you can count on to help you whenever you need them, or not?”

4. Freedom to make life choices (0-1) is the national average of binary responses to the GWP question “Are you satisfied or dissatisfied with your freedom to choose what you do with your life?”

5. Generosity is the residual of regressing the national average of GWP responses to the donation question “Have you donated money to a charity in the past month?” on log GDP per capita.

6. Perceptions of corruption (0-1) are the average of binary answers to two GWP questions: “Is corruption widespread throughout the government or not?” and “Is corruption widespread within businesses or not?” Where data for government corruption are missing, the perception of business corruption is used as the overall corruption perception measure.

7. Positive affect is defined as the average of previous-day effects measures for laughter, enjoyment, and interest. The inclusion of interest (first added for World Happiness Report 2022), gives us three components in each of positive and negative affect, and slightly improves the equation fit in column 4. The general form for the affect questions is: Did you experience the following feelings during a lot of the day yesterday?

8. Negative affect is defined as the average of previous-day effects measures for worry, sadness, and anger.

The World Happiness Report is a publication of the Sustainable Development Solutions Network, powered by the Gallup World Poll data. The World Happiness Report reflects a worldwide demand for more attention to happiness and well-being as criteria for government policy. It reviews the state of happiness in the world today and shows how the science of happiness explains personal and national variations in happiness.

Life evaluations from the Gallup World Poll provide the basis for the annual happiness rankings. They are based on answers to the main life evaluation question. The Cantril ladder asks respondents to think of a ladder, with the best possible life for them being a 10 and the worst possible life being a 0. They are then asked to rate their own current lives on a 0 to 10 scale. The rankings are from nationally representative samples over three years.

We use observed data on the six variables and estimates of their associations with life evaluations to explain the variation across countries. They include GDP per capita, social support, healthy life expectancy, freedom, generosity, and corruption. Our happiness rankings are not based on any index of these six factors – the scores are instead based on individuals’ own assessments of their lives, in particular, their answers to the single-item Cantril ladder life-evaluation question, much as epidemiologists estimate the extent to which life expectancy is affected by factors such as smoking, exercise, and diet.

The World Happiness Report and much of the growing international interest in happiness exist thanks to Bhutan. They sponsored Resolution 65/309, “Happiness: Towards a holistic approach to development,” adopted by the General Assembly of the United Nations on 19 July 2011, inviting national governments to “give more importance to happiness and well-being in determining how to achieve and measure social and economic development.”

On 2 April 2012, chaired by Prime Minister Jigmi Y. Thinley and Jeffrey D. Sachs, the first World Happiness Report was presented to review evidence from the emerging science of happiness for the ‘Defining a New Economic Paradigm: The Report of the High-Level Meeting on Well-being and Happiness.’ On 28 June 2012, the United Nations General Assembly adopted Resolution 66/281, proclaiming the 20 March International Day of Happiness to be observed annually. The World Happiness Report is released annually around March 20th as part of the International Day of Happiness celebration.

Published by the Sustainable Development Solutions Network, the preparation of the World Happiness Report is at the Center for Sustainable Development at Columbia University, with research support from the Centre for Economic Performance at the London School of Economics; the Vancouver School of Economics at the University of British Columbia; the Wellbeing Research Centre at the University of Oxford; and the Helping and Happiness Lab at Simon Fraser University.

The editorial team includes three founding editors, John F. Helliwell, Richard Layard, and Jeffrey D. Sachs, and editors Jan-Emmanuel De Neve, Lara B. Aknin, and Shun Wang. Sharon Paculor manages operations as Production Editor.

Link to dataset: https://www.kaggle.com/datasets/usamabuttar/world-happiness-report-2005-present

