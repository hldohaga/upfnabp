---
title: "bp upf and na"
output:
  html_document:
    toc: yes
    fig_caption: yes
    number_sections: yes
    keep_md: yes
  html_notebook: 
    toc: yes
    fig_caption: yes
    number_sections: yes
  pdf_document:
    toc: yes
  word_document: 
    toc: yes
    fig_caption: yes
    keep_md: yes
editor_options: 
  markdown: 
    wrap: sentence
---


 
# BP and UPF and Na in NDNS Dissertation
# Method
## Introduction

This section takes the research question and explains how the data is used to answer the question.

There will be a description of the study and data collection. Then a section on governance and ethics in this project.

Data analysis starts with the relevant variables being identified and extracted. 
Some data may need to be recalculated or to be processed to make a more useable form.
The population will be reviewed. Groups which bias the results are removed.
Then there is a description of the data.
The second analysis section compares the data between two cohorts.
The third analysis section involves using linear regression to identify if there is a correlation between the BP and each of the key variables. 
Multivariable regression models are then generated.
These models are finally examined to identify the relative importance of the different variables in developing an optimal model and what these models tell us about the relationship between our variables.
A summary and conclusion will bring all these together.


## Research Question

What proportion of the association between blood pressure (SBP) and UPF intake can be explained by the changes in salt intake in England between 2008 and 2019? 

The question can be split into parts, 
What was intake of salt between 2008 and 2019?
What was intake of UPF between 2008 and 2019?
What was BP between 2008 and 2019?
Did each of these change over that time and how?
Did the changes in any one affect any other?
What are the sizes of the changes?
Which element was most important in these changes?

All of these questions look for numbers as answers. 

Answering the question starts with counting.
The collected numbers are then compared in different ways to answer each part of the question.

## National Dietary and Nutritional Survey

This survey is a collaboration between government departments responsible for health and for food production.
They have engaged academic partners to deliver reports on diet and nutrition across the United Kingdom.
The study is designed to be representative across the whole area.

### Study design

This is a rolling cohort study which each year selects a new cohort of participants. 
The sample is approximately 1000 per year with 50% adults. 
The design has a random selection across postal units (psu). 
This is stratified to ensure a representative sample across the four nations and across regions within those countries. The sample is also representative for age and sex.

Having taken up the study, participants complete a 4 day food diary, and have an interview with a nurse which includes taking several measurements. Weighting is given for each annual survey to enable comparison across the years taking account for alterations in uptake and response completion.

### NDNS Dataset

The data from the NDNS study contains items about each individual,and their household.
It contains a table with each item of food as recorded in their diary.
There is a table with the overall intake of each of a large range of nutrients for the whole period.
This is calculated from the diary using nutritional tables which are published as part of the dataset.
The dataset is available via the UK national Data service for research purposes.


NDNS began before Monteiro's processing based classification, Nova , was developed. 
There is no record of Nova food type in NDNS. This has been calculated from the food descriptions. 
I have used a table from Rauber et al. for Nova values in NDNS.

### University Research Governance and Ethical Review

The research has been carried out under the University governance. A proposal was discussed and agreed within the department. 
The need for ethical review was considered using the university research tool. 
The fact that the data is anonymised and there was no contact with participants means that there is minimal risk of harm to research participants. A certificate from the ethics department is in the appendix.

Other ethical issues include data custodianship ensuring that the the rights of the owners of the data and of the participants are still considered as part of the process of analysis and dissemination of the research.

Issues around the power structures which lead to privilege one research project or proposal over another are considered more in the positionality section.

### Data Processing

The storage of the data is in keeping with the research governance agreements of the University and the Data set owners.
The data is read from its files using 'r-studio' with the processing being carried out using packages available from CRAN.
I have used files which had been amalgamated into four batches. These are 2008-2012, 2013-2014, 2015-2016, 2017-2019.

Once the data labels are made consistent across the batches, weighting recalculation is done.
This generates values which account for differences in population balance across the annual cohorts. 
These result from differences in compliance and uptake within and across the years.

The years are amalgamated and the nature of the variables is specified.

### Exclusions 

The relationship between salt and systolic blood pressure may be different in individuals with pathologically high BP. 
Those taking BP controlling medications may have a different relationship to sodium and UPF.
These patients were excluded from the main analysis, however this affected the sample size and skewed the male female ratio. 
Analysis was done with exclusion and this produced results in line with those presented, but of smaller magnitude.
This additional analysis is not presented here.






## Description of the data


The data is summarised for the key continuous variables.
The key variables are systolic BP (omsysval), UPF intake (Epcnt_4) and Sodium intake (sodiummg).
These variables are the ones which most relate to the research question. Table x shows the data which has been balanced using the weightings provided by the NDNS research team.


There are a number of related variables in the dataset.
These were chosen for relevance, reliability and practicality.
These variables are ones which can also influence BP.
They include Age, Sex, BMI, height and weight.
Age at completion of education (educfinh), and IMD are also used. 


The omsysval is a validated measurement with significant quality assessment within the dataset.
Raw systolic BP values are present in the dataset but are made up of data with issues around quality.
In particular the systolic BP values are assessed for the effects of exercise, temperature and ill health.
The variable omsysval is a quality assured mean value which is reliable across the dataset.

The sodium value is one calculated from intake based on food diaries and standard food nutrient values.
This only reflects standard foods and is the result of assumptions about the content being consistent.
Serum sodium values are available for the early dataset, but not the later one.
There are also values for 24 urinary sodium which is probably a better indicator of dietary sodium for parts of the dataset, but again these are not found in both time periods.

The food diaries need processing to identify the UPF intake.
Each persons food diary entries are assessed against the Nova food classification from Rauber. 
Then the weight and energy content of the days food is calculated by Nova group. 
This is added to the intake for the other 3 days and the total intake by Nova group established.

The percentage of the total intake of energy (Epcnt_4) is then calculated for each of the 4 Nova categories.
Nova group 4 or UPF intake is used for the study.

Mean values for the data are displayed with a comparison for weighted values.
The exposure variables are sodium intake (Sodiummg), and ultra processed food intake (Epcnt_4).
The outcome variable, the mean systolic blood pressure (omsysval). 



### Analysis of Change over Survey Years

The second phase of analysis shows how the key variables have changed over the survey years cohorts.
This will show separately how the inputs and outputs have changed.

These are not the same participants so matched analysis, or time series analysis is not directly applicable.

Plots will be given to show the values in each of the available cohorts.

Other variables in the data are compared across to assess how the data changes. 
t tests are again used for continuous data, and chi squared tests are used for categorical data.

###  Regression of key variables on systolic BP

Analysis of the correlation between BP and sodium intake, and then BP and UPF intake is done using linear regression. 
This will give an indicator of the direction, and strength of any relationship between the variables.
There is also anova analysis to understand the statistical significance of these results.

### Multiple Regression on Systolic BP

Multivariable regression models are then developed to understand the interactions between variables and to develop a mathematical model of the relationship. 
The optimal model is one which best explains the pattern of data, but which also makes practical sense for the wider understanding of relationships.
Assessment techniques try to understand the importance of including particular variables, and the form in which they are best included. Anova analysis here identifies how the addition of different variables changes the significance of other variables. This can suggest causative relationships.

### AIC and sensitivty Anaylsis

This section compares models side by side using assessment techniques to identify the best way of describing the data. 
The 'best' in part is determined by the whether a model is needed to predict more data, or just to understand the data available.
Here it is about how best to describe the relationship between Na, UPF, and BP.

##  Method Conclusion

This section has highlighted how the material for the study is brought together and how the governance and ethics fit with the data collection, processing and analysis to help us to derive the results which will be presented in the next section.






























































































































#  Results 
##  Results Introduction

The results derive from the method outlined above and follow the pattern described. 
I will discuss the results having already described the method.



## Description of the Data

This first table highlights the key variables from the years 2008-2019.
These are weighted values

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
##    70.5   105.5   115.5   118.3   128.5   220.0    7958
```

```{=html}
<template id="50638142-0d93-4c78-a8c6-8b1660abd2cc"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-d3075fd0{}.cl-d2fb0afa{font-family:'DejaVu Sans';font-size:11pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-d2fb0b04{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-d2fb0b0e{font-family:'DejaVu Sans';font-size:6.6pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;position: relative;bottom:3.3pt;}.cl-d3006478{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d3006482{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d3006483{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d3006484{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d300648c{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:15pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d300648d{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-d3008458{width:2.855in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008462{width:1.265in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008463{width:1.372in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d300846c{width:2.855in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d300846d{width:1.265in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008476{width:1.372in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008477{width:2.855in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008480{width:1.265in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008481{width:1.372in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008482{width:2.855in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d300848a{width:1.265in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d300848b{width:1.372in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008494{width:2.855in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008495{width:1.265in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-d3008496{width:1.372in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-d3075fd0'><caption id="SurveyYear"><span>NDNS year 1-11 data over years</span></caption><thead><tr style="overflow-wrap:break-word;"><th class="cl-d3008458"><p class="cl-d3006478"><span class="cl-d2fb0afa">Characteristic</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">1</span><span class="cl-d2fb0b04">, N = 1,459</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">2</span><span class="cl-d2fb0b04">, N = 1,429</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">3</span><span class="cl-d2fb0b04">, N = 1,372</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">4</span><span class="cl-d2fb0b04">, N = 1,432</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">5</span><span class="cl-d2fb0b04">, N = 1,485</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">6</span><span class="cl-d2fb0b04">, N = 1,362</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">7</span><span class="cl-d2fb0b04">, N = 1,442</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">8</span><span class="cl-d2fb0b04">, N = 1,405</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008462"><p class="cl-d3006482"><span class="cl-d2fb0afa">9</span><span class="cl-d2fb0b04">, N = 1,444</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008463"><p class="cl-d3006482"><span class="cl-d2fb0afa">10</span><span class="cl-d2fb0b04">, N = 1,481</span><span class="cl-d2fb0b0e">1</span></p></th><th class="cl-d3008463"><p class="cl-d3006482"><span class="cl-d2fb0afa">11</span><span class="cl-d2fb0b04">, N = 1,345</span><span class="cl-d2fb0b0e">1</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-d300846c"><p class="cl-d3006483"><span class="cl-d2fb0b04">Sodium (mg) diet only</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">2,257 (878)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">2,208 (827)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">2,184 (830)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">2,077 (799)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">2,010 (742)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,988 (765)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,987 (798)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,945 (822)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,924 (775)</span></p></td><td class="cl-d3008476"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,892 (724)</span></p></td><td class="cl-d3008476"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,929 (762)</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d3008477"><p class="cl-d3006483"><span class="cl-d2fb0b04">Epcnt_4</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">49 (14)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">50 (15)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">49 (15)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">49 (15)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">48 (15)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">50 (16)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">47 (15)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">45 (16)</span></p></td><td class="cl-d3008480"><p class="cl-d3006484"><span class="cl-d2fb0b04">45 (16)</span></p></td><td class="cl-d3008481"><p class="cl-d3006484"><span class="cl-d2fb0b04">45 (15)</span></p></td><td class="cl-d3008481"><p class="cl-d3006484"><span class="cl-d2fb0b04">47 (16)</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d300846c"><p class="cl-d3006483"><span class="cl-d2fb0b04">(D) Omron valid mean systolic BP</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">125 (19)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">124 (16)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">124 (18)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">124 (16)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">122 (17)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">120 (18)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">124 (19)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">121 (18)</span></p></td><td class="cl-d300846d"><p class="cl-d3006484"><span class="cl-d2fb0b04">121 (17)</span></p></td><td class="cl-d3008476"><p class="cl-d3006484"><span class="cl-d2fb0b04">122 (16)</span></p></td><td class="cl-d3008476"><p class="cl-d3006484"><span class="cl-d2fb0b04">0 (0)</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-d3008482"><p class="cl-d300648c"><span class="cl-d2fb0b04">Unknown</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">609</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">639</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">604</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">654</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">551</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">574</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">588</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">541</span></p></td><td class="cl-d300848a"><p class="cl-d3006484"><span class="cl-d2fb0b04">562</span></p></td><td class="cl-d300848b"><p class="cl-d3006484"><span class="cl-d2fb0b04">529</span></p></td><td class="cl-d300848b"><p class="cl-d3006484"><span class="cl-d2fb0b04">1,345</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="12"class="cl-d3008494"><p class="cl-d300648d"><span class="cl-d2fb0b0e">1</span><span class="cl-d2fb0b04">Mean (SD)</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="bb6cfec9-ed9b-450a-887e-d4d479a4515f"></div>
<script>
var dest = document.getElementById("bb6cfec9-ed9b-450a-887e-d4d479a4515f");
var template = document.getElementById("50638142-0d93-4c78-a8c6-8b1660abd2cc");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

This tables shows the change between annual cohorts.



![](methodandresults_files/figure-html/Years Plots-1.png)<!-- -->![](methodandresults_files/figure-html/Years Plots-2.png)<!-- -->![](methodandresults_files/figure-html/Years Plots-3.png)<!-- -->

These plots show how the percentage of energy derived from UPF, the sodium intake, and the Systolic BP have changed over the years.
The graphs show that there is not a clear visible difference between the years. Statistical analysis will follow.
These next box plots show the difference between the sexes in the key variables.

![](methodandresults_files/figure-html/Sex Boxplots-1.png)<!-- -->![](methodandresults_files/figure-html/Sex Boxplots-2.png)<!-- -->![](methodandresults_files/figure-html/Sex Boxplots-3.png)<!-- -->




## Analysis of Change over Survey Years

 comparing UPF and Sodium intake calculated from diet

The sodium levels are compared across the survey years and show a statistically significant trend. 

The pcnt UPF intake in over the same period shows a similar trend.



It seems the mean percentage UPF intake changes from 48.8% to 59.2% energy and this increase is statistically significant.
The mean sodium intake has changed from  2156.30 mg to 2574.33 mg and is also statistically significant with a p value less than 0.05.

 what about outcome BP?

The next t tests compare mean systolic values in the two time periods and then the mean diastolic values.

```{=html}
<template id="8a37cf44-c51e-4b81-b08d-d1ba26c8efda"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-ddef2824{}.cl-dde3a74c{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-dde3a756{font-family:'DejaVu Sans';font-size:11pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-dde3a760{font-family:'DejaVu Sans';font-size:6.6pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;position: relative;bottom:3.3pt;}.cl-dde8a0ee{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dde8a0f8{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dde8a102{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dde8a103{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dde8a104{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-dde8ba34{width:1.698in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba3e{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba48{width:0.881in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba49{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba52{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba53{width:1.698in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba5c{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba5d{width:0.881in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba5e{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba66{width:1.173in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba70{width:1.698in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba71{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba7a{width:0.881in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba7b{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba84{width:1.173in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba85{width:1.698in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba86{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba8e{width:0.881in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba8f{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-dde8ba98{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-ddef2824'><thead><tr style="overflow-wrap:break-word;"><th class="cl-dde8ba34"><p class="cl-dde8a0ee"><span class="cl-dde3a74c"> </span></p></th><th  colspan="3"class="cl-dde8ba3e"><p class="cl-dde8a0f8"><span class="cl-dde3a74c">Sodium in mg</span></p></th><th  colspan="3"class="cl-dde8ba3e"><p class="cl-dde8a0f8"><span class="cl-dde3a74c">Percent Energy UPF</span></p></th><th  colspan="3"class="cl-dde8ba3e"><p class="cl-dde8a0f8"><span class="cl-dde3a74c">Systolic BP</span></p></th></tr><tr style="overflow-wrap:break-word;"><th class="cl-dde8ba34"><p class="cl-dde8a0ee"><span class="cl-dde3a756">Characteristic</span></p></th><th class="cl-dde8ba3e"><p class="cl-dde8a0f8"><span class="cl-dde3a756">Beta</span></p></th><th class="cl-dde8ba48"><p class="cl-dde8a0f8"><span class="cl-dde3a756">95% CI</span><span class="cl-dde3a760">1</span></p></th><th class="cl-dde8ba49"><p class="cl-dde8a0f8"><span class="cl-dde3a756">p-value</span></p></th><th class="cl-dde8ba3e"><p class="cl-dde8a0f8"><span class="cl-dde3a756">Beta</span></p></th><th class="cl-dde8ba52"><p class="cl-dde8a0f8"><span class="cl-dde3a756">95% CI</span><span class="cl-dde3a760">1</span></p></th><th class="cl-dde8ba49"><p class="cl-dde8a0f8"><span class="cl-dde3a756">p-value</span></p></th><th class="cl-dde8ba3e"><p class="cl-dde8a0f8"><span class="cl-dde3a756">Beta</span></p></th><th class="cl-dde8ba52"><p class="cl-dde8a0f8"><span class="cl-dde3a756">95% CI</span><span class="cl-dde3a760">1</span></p></th><th class="cl-dde8ba49"><p class="cl-dde8a0f8"><span class="cl-dde3a756">p-value</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-dde8ba53"><p class="cl-dde8a102"><span class="cl-dde3a74c">SurveyYear</span></p></td><td class="cl-dde8ba5c"><p class="cl-dde8a103"><span class="cl-dde3a74c">-40</span></p></td><td class="cl-dde8ba5d"><p class="cl-dde8a103"><span class="cl-dde3a74c">-50, -30</span></p></td><td class="cl-dde8ba5e"><p class="cl-dde8a103"><span class="cl-dde3a74c">&lt;0.001</span></p></td><td class="cl-dde8ba5c"><p class="cl-dde8a103"><span class="cl-dde3a74c">-0.57</span></p></td><td class="cl-dde8ba66"><p class="cl-dde8a103"><span class="cl-dde3a74c">-0.74, -0.39</span></p></td><td class="cl-dde8ba5e"><p class="cl-dde8a103"><span class="cl-dde3a74c">&lt;0.001</span></p></td><td class="cl-dde8ba5c"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba66"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba5e"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-dde8ba70"><p class="cl-dde8a102"><span class="cl-dde3a74c">NDNS Survey year</span></p></td><td class="cl-dde8ba71"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba7a"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba7b"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba71"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba84"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba7b"><p class="cl-dde8a103"><span class="cl-dde3a74c"></span></p></td><td class="cl-dde8ba71"><p class="cl-dde8a103"><span class="cl-dde3a74c">-0.37</span></p></td><td class="cl-dde8ba84"><p class="cl-dde8a103"><span class="cl-dde3a74c">-0.56, -0.19</span></p></td><td class="cl-dde8ba7b"><p class="cl-dde8a103"><span class="cl-dde3a74c">&lt;0.001</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="10"class="cl-dde8ba85"><p class="cl-dde8a104"><span class="cl-dde3a760">1</span><span class="cl-dde3a74c">CI = Confidence Interval</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="a03a0f09-bdd6-47d1-b828-a8b89d727b9a"></div>
<script>
var dest = document.getElementById("a03a0f09-bdd6-47d1-b828-a8b89d727b9a");
var template = document.getElementById("8a37cf44-c51e-4b81-b08d-d1ba26c8efda");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

There is a change in mean systolic from 122-152 mmHg with a p value of 3.112e -7.

In summary there is statistically significant change in UPF and Na intake and also in both systolic and diastolic pressures.

Has another factor affected the BP change ?

### Comparatison of other variables

How are variables distributed between the two cohorts. 
The NDNS dataset was weighted to keep many of these the same between datasets.
Continuous variables are assessed using linear regression and categorical variables using chi squared tests to give p.values.

  Age and Sex
The age of the two datasets does not show a statistically significant change table x.


There is no statistically significant change in the sex distribution over the years.

This might be due to differences in the numbers of excluded participants.
In particular there may be more younger people and women taking e.g. bblockers in one group.



This table suggests that there is a significant difference in the bmi of the cohorts.

```{=html}
<template id="b291dcd2-a79e-4136-9e35-55e9adfcf155"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-e3c5d946{}.cl-e3ba8212{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-e3ba8226{font-family:'DejaVu Sans';font-size:11pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-e3ba8227{font-family:'DejaVu Sans';font-size:6.6pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;position: relative;bottom:3.3pt;}.cl-e3bf45fe{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-e3bf4608{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-e3bf4612{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-e3bf4613{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-e3bf461c{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-e3bf607a{width:1.698in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf6084{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf608e{width:1.118in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf6098{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf6099{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf609a{width:1.698in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60a2{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60a3{width:1.118in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60ac{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60ad{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60b6{width:1.698in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60b7{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60b8{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60c0{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60c1{width:1.173in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60ca{width:1.698in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60cb{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60d4{width:1.118in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60d5{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-e3bf60d6{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-e3c5d946'><thead><tr style="overflow-wrap:break-word;"><th class="cl-e3bf607a"><p class="cl-e3bf45fe"><span class="cl-e3ba8212"> </span></p></th><th  colspan="3"class="cl-e3bf6084"><p class="cl-e3bf4608"><span class="cl-e3ba8212">Age</span></p></th><th  colspan="3"class="cl-e3bf6084"><p class="cl-e3bf4608"><span class="cl-e3ba8212">BMI</span></p></th></tr><tr style="overflow-wrap:break-word;"><th class="cl-e3bf609a"><p class="cl-e3bf45fe"><span class="cl-e3ba8226">Characteristic</span></p></th><th class="cl-e3bf60a2"><p class="cl-e3bf4608"><span class="cl-e3ba8226">Beta</span></p></th><th class="cl-e3bf60a3"><p class="cl-e3bf4608"><span class="cl-e3ba8226">95% CI</span><span class="cl-e3ba8227">1</span></p></th><th class="cl-e3bf60ac"><p class="cl-e3bf4608"><span class="cl-e3ba8226">p-value</span></p></th><th class="cl-e3bf60a2"><p class="cl-e3bf4608"><span class="cl-e3ba8226">Beta</span></p></th><th class="cl-e3bf60ad"><p class="cl-e3bf4608"><span class="cl-e3ba8226">95% CI</span><span class="cl-e3ba8227">1</span></p></th><th class="cl-e3bf60ac"><p class="cl-e3bf4608"><span class="cl-e3ba8226">p-value</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-e3bf60b6"><p class="cl-e3bf4612"><span class="cl-e3ba8212">NDNS Survey year</span></p></td><td class="cl-e3bf60b7"><p class="cl-e3bf4613"><span class="cl-e3ba8212">0.10</span></p></td><td class="cl-e3bf60b8"><p class="cl-e3bf4613"><span class="cl-e3ba8212">-0.06, 0.25</span></p></td><td class="cl-e3bf60c0"><p class="cl-e3bf4613"><span class="cl-e3ba8212">0.2</span></p></td><td class="cl-e3bf60b7"><p class="cl-e3bf4613"><span class="cl-e3ba8212">-0.09</span></p></td><td class="cl-e3bf60c1"><p class="cl-e3bf4613"><span class="cl-e3ba8212">-0.13, -0.04</span></p></td><td class="cl-e3bf60c0"><p class="cl-e3bf4613"><span class="cl-e3ba8212">&lt;0.001</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="7"class="cl-e3bf60ca"><p class="cl-e3bf461c"><span class="cl-e3ba8227">1</span><span class="cl-e3ba8212">CI = Confidence Interval</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="38cd529e-0c5a-47e3-a840-e4a481ce5d4b"></div>
<script>
var dest = document.getElementById("38cd529e-0c5a-47e3-a840-e4a481ce5d4b");
var template = document.getElementById("b291dcd2-a79e-4136-9e35-55e9adfcf155");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```
There is a difference in the age of finishing education.

The differences in qimd, are not statistically significant.

These values identify a significant difference in the number of vegetarians
```{=html}
<template id="edf4e2a2-3588-4908-80cf-ef7edc0ce7de"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-eb899e7e{}.cl-eb7c7c3a{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-eb7c7c4e{font-family:'DejaVu Sans';font-size:6.6pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;position: relative;bottom:3.3pt;}.cl-eb8297b4{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-eb8297be{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-eb8297c8{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-eb8297fa{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-eb82b690{width:1.124in;background-color:transparent;vertical-align: bottom;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 2pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b69a{width:0.897in;background-color:transparent;vertical-align: bottom;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 2pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6a4{width:1.124in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6a5{width:0.897in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6ae{width:1.124in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6af{width:0.897in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6b8{width:1.124in;background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6c2{width:0.897in;background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6cc{width:1.124in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-eb82b6cd{width:0.897in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-eb899e7e'><thead><tr style="overflow-wrap:break-word;"><th class="cl-eb82b690"><p class="cl-eb8297b4"><span class="cl-eb7c7c3a">Variable</span></p></th><th class="cl-eb82b69a"><p class="cl-eb8297be"><span class="cl-eb7c7c3a">p.value</span><span class="cl-eb7c7c4e">1</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-eb82b6a4"><p class="cl-eb8297c8"><span class="cl-eb7c7c3a">Sex</span></p></td><td class="cl-eb82b6a5"><p class="cl-eb8297fa"><span class="cl-eb7c7c3a">0.5921</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-eb82b6ae"><p class="cl-eb8297c8"><span class="cl-eb7c7c3a">Education</span></p></td><td class="cl-eb82b6af"><p class="cl-eb8297fa"><span class="cl-eb7c7c3a">0.0000</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-eb82b6a4"><p class="cl-eb8297c8"><span class="cl-eb7c7c3a">IMD</span></p></td><td class="cl-eb82b6a5"><p class="cl-eb8297fa"><span class="cl-eb7c7c3a">0.2208</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-eb82b6b8"><p class="cl-eb8297c8"><span class="cl-eb7c7c3a">Vegetarian</span></p></td><td class="cl-eb82b6c2"><p class="cl-eb8297fa"><span class="cl-eb7c7c3a">0.0245</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="2"class="cl-eb82b6cc"><p class="cl-eb8297c8"><span class="cl-eb7c7c4e">1</span><span class="cl-eb7c7c3a">Chi Squared for categorical data</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="5bd4fb4a-806e-49b9-afbb-385ad10da660"></div>
<script>
var dest = document.getElementById("5bd4fb4a-806e-49b9-afbb-385ad10da660");
var template = document.getElementById("edf4e2a2-3588-4908-80cf-ef7edc0ce7de");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```






##  Regression of key variables on Systolic BP

Simple linear regression equations look for the relationship between the dependant variable, and the independent variable.
For these I am looking at the whole dataset 

![](methodandresults_files/figure-html/unnamed-chunk-15-1.png)<!-- -->![](methodandresults_files/figure-html/unnamed-chunk-15-2.png)<!-- -->![](methodandresults_files/figure-html/unnamed-chunk-15-3.png)<!-- -->

The regression models are examined for Sodium and UP against BP.
These use the populations where participants have been excluded. 
(analysis including these makes no difference!!)



First, omsysval is compared to EnergykJ, then sodiummg.

```{=html}
<template id="03562d24-edf4-4bae-9a7e-359c650e6fe1"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-fde588e4{}.cl-fdda09f6{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-fdda0a0a{font-family:'DejaVu Sans';font-size:11pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-fdda0a14{font-family:'DejaVu Sans';font-size:6.6pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;position: relative;bottom:3.3pt;}.cl-fdded404{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-fdded42c{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-fdded42d{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-fdded436{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-fdded44a{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-fddefb6e{width:0.809in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefb82{width:1.988in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefb8c{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefb96{width:1.063in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefba0{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbaa{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbab{width:0.809in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbb4{width:1.988in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbbe{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbbf{width:1.063in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbc0{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbc8{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbd2{width:0.809in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbe6{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbe7{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddefbf0{width:1.063in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d16{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d34{width:1.173in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d35{width:0.809in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d3e{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d48{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d49{width:1.063in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d52{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d5c{width:1.173in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d5d{width:0.809in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d66{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d70{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d7a{width:1.063in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d84{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d85{width:1.173in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d8e{width:0.809in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0d98{width:1.988in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0da2{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0dac{width:1.063in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0db6{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-fddf0db7{width:1.173in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-fde588e4'><thead><tr style="overflow-wrap:break-word;"><th  colspan="2"class="cl-fddefb6e"><p class="cl-fdded404"><span class="cl-fdda09f6"> </span></p></th><th  colspan="3"class="cl-fddefb8c"><p class="cl-fdded42c"><span class="cl-fdda09f6">BP</span></p></th><th  colspan="3"class="cl-fddefb8c"><p class="cl-fdded42c"><span class="cl-fdda09f6">UPF</span></p></th><th  colspan="3"class="cl-fddefb8c"><p class="cl-fdded42c"><span class="cl-fdda09f6">Na</span></p></th></tr><tr style="overflow-wrap:break-word;"><th class="cl-fddefbab"><p class="cl-fdded404"><span class="cl-fdda0a0a">Group</span></p></th><th class="cl-fddefbb4"><p class="cl-fdded404"><span class="cl-fdda0a0a">Characteristic</span></p></th><th class="cl-fddefbbe"><p class="cl-fdded42c"><span class="cl-fdda0a0a">Beta</span></p></th><th class="cl-fddefbbf"><p class="cl-fdded42c"><span class="cl-fdda0a0a">95% CI</span><span class="cl-fdda0a14">1</span></p></th><th class="cl-fddefbc0"><p class="cl-fdded42c"><span class="cl-fdda0a0a">p-value</span></p></th><th class="cl-fddefbbe"><p class="cl-fdded42c"><span class="cl-fdda0a0a">Beta</span></p></th><th class="cl-fddefbc8"><p class="cl-fdded42c"><span class="cl-fdda0a0a">95% CI</span><span class="cl-fdda0a14">1</span></p></th><th class="cl-fddefbc0"><p class="cl-fdded42c"><span class="cl-fdda0a0a">p-value</span></p></th><th class="cl-fddefbbe"><p class="cl-fdded42c"><span class="cl-fdda0a0a">Beta</span></p></th><th class="cl-fddefbbf"><p class="cl-fdded42c"><span class="cl-fdda0a0a">95% CI</span><span class="cl-fdda0a14">1</span></p></th><th class="cl-fddefbc0"><p class="cl-fdded42c"><span class="cl-fdda0a0a">p-value</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-fddefbd2"><p class="cl-fdded42d"><span class="cl-fdda09f6">BP</span></p></td><td class="cl-fddefbe6"><p class="cl-fdded42d"><span class="cl-fdda09f6">Sodium (mg) diet only</span></p></td><td class="cl-fddefbe7"><p class="cl-fdded436"><span class="cl-fdda09f6">0.00</span></p></td><td class="cl-fddefbf0"><p class="cl-fdded436"><span class="cl-fdda09f6">0.00, 0.00</span></p></td><td class="cl-fddf0d16"><p class="cl-fdded436"><span class="cl-fdda09f6">&lt;0.001</span></p></td><td class="cl-fddefbe7"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d34"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d16"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddefbe7"><p class="cl-fdded436"><span class="cl-fdda09f6">0.00</span></p></td><td class="cl-fddefbf0"><p class="cl-fdded436"><span class="cl-fdda09f6">0.00, 0.00</span></p></td><td class="cl-fddf0d16"><p class="cl-fdded436"><span class="cl-fdda09f6">&lt;0.001</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-fddf0d35"><p class="cl-fdded42d"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d3e"><p class="cl-fdded42d"><span class="cl-fdda09f6">Epcnt_4</span></p></td><td class="cl-fddf0d48"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d49"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d52"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d48"><p class="cl-fdded436"><span class="cl-fdda09f6">-0.21</span></p></td><td class="cl-fddf0d5c"><p class="cl-fdded436"><span class="cl-fdda09f6">-0.24, -0.17</span></p></td><td class="cl-fddf0d52"><p class="cl-fdded436"><span class="cl-fdda09f6">&lt;0.001</span></p></td><td class="cl-fddf0d48"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d49"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td><td class="cl-fddf0d52"><p class="cl-fdded436"><span class="cl-fdda09f6"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-fddf0d5d"><p class="cl-fdded42d"><span class="cl-fdda09f6">Age</span></p></td><td class="cl-fddf0d66"><p class="cl-fdded42d"><span class="cl-fdda09f6">Age</span></p></td><td class="cl-fddf0d70"><p class="cl-fdded436"><span class="cl-fdda09f6">0.43</span></p></td><td class="cl-fddf0d7a"><p class="cl-fdded436"><span class="cl-fdda09f6">0.40, 0.45</span></p></td><td class="cl-fddf0d84"><p class="cl-fdded436"><span class="cl-fdda09f6">&lt;0.001</span></p></td><td class="cl-fddf0d70"><p class="cl-fdded436"><span class="cl-fdda09f6">-0.21</span></p></td><td class="cl-fddf0d85"><p class="cl-fdded436"><span class="cl-fdda09f6">-0.23, -0.20</span></p></td><td class="cl-fddf0d84"><p class="cl-fdded436"><span class="cl-fdda09f6">&lt;0.001</span></p></td><td class="cl-fddf0d70"><p class="cl-fdded436"><span class="cl-fdda09f6">0.75</span></p></td><td class="cl-fddf0d7a"><p class="cl-fdded436"><span class="cl-fdda09f6">0.08, 1.4</span></p></td><td class="cl-fddf0d84"><p class="cl-fdded436"><span class="cl-fdda09f6">0.028</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="11"class="cl-fddf0d8e"><p class="cl-fdded44a"><span class="cl-fdda0a14">1</span><span class="cl-fdda09f6">CI = Confidence Interval</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="fc626ae0-cf07-461e-ba9f-d745cbcb4fe0"></div>
<script>
var dest = document.getElementById("fc626ae0-cf07-461e-ba9f-d745cbcb4fe0");
var template = document.getElementById("03562d24-edf4-4bae-9a7e-359c650e6fe1");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

Sodium intake appears to have no linear relationship with BP or UPF energy intake.
The UPF energy intake has a negative relationship with BP.
BP clearly increases with age.
Regression of UPF with age shows an equal and opposite affect to that on BP.
Regression of Sodium with age shows a weaker positive effect.


In conclusion the linear regression models show that there are correlations between the systolic BP and energy intake only. The next section will examine how this situation changes as variables interact in more complex models.



## Multi variable regression on Systolic BP

This uses a model of several variables and it can highlight the contributions of each variable.
The intention is to develop an optimal model which mathematically describes the situation.

In particular the research question asks about the relationship between Sodium and UPF intake with BP.
The models will reflect this question with models looking to include or exclude particular variables.
Comparisons between these models are then made using sensitivity analysis, identifying how sensitive the model is to sodium, or other factors

This first model looks at the relationships between BP and Age and Sex education and IMD all of which may have an effect on BP. This model excludes UPF and Na.


This first model shows that all these variables, Age, Sex, education, IMD,  and bmi, give statistically significant coefficients for the model which suggests that they do have an important part to play in any optimal model.

The next model adds Sodiummg.


This second model gives Sodiummg, educfinh, and IMD statistical significance. VitaminD shows no statistical significance, TotalEMJ and sqrt(pcnt) and ethgrp2 all have limited significance.



Now we add UPF as total energy from nova 4 or UPF



UPF does not seem significant...

but when removing sodiummg


the UPF becomes significant! 
This suggests that the effect of UPF is mediated by Sodium!!

comparing AIC for these three models 

```{=html}
<template id="0d3590a5-a2b3-40eb-95b1-d937e0e6c941"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-06b4d704{}.cl-06a58646{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-06a58650{font-family:'DejaVu Sans';font-size:11pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-06a58664{font-family:'DejaVu Sans';font-size:6.6pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;position: relative;bottom:3.3pt;}.cl-06ab4f2c{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06ab4f40{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:2pt;padding-top:2pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06ab4f41{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06ab4f4a{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06ab4f4b{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:15pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06ab4f54{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06ab78c6{width:1.988in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab78da{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab78e4{width:1.076in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab78e5{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab78ee{width:1.118in;background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab78f8{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab78f9{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7902{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7903{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab790c{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7916{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7917{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7920{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab792a{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7934{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7935{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab793e{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7948{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7952{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7953{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab795c{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7966{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7967{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7970{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab797a{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab797b{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7984{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab798e{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab798f{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7998{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7999{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79a2{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79ac{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79ad{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79b6{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79c0{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79c1{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79ca{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79d4{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79de{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79df{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79e8{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79f2{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab79fc{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a06{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a07{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a10{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a11{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a1a{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a24{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a2e{width:1.988in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a2f{width:0.681in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a38{width:1.076in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a39{width:0.925in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a42{width:1.118in;background-color:transparent;vertical-align: top;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a4c{width:1.988in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a60{width:0.681in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a61{width:1.076in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a6a{width:0.925in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06ab7a74{width:1.118in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-06b4d704'><thead><tr style="overflow-wrap:break-word;"><th class="cl-06ab78c6"><p class="cl-06ab4f2c"><span class="cl-06a58646"> </span></p></th><th  colspan="3"class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58646">No sodium or UPF</span></p></th><th  colspan="3"class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58646">Sodium only</span></p></th><th  colspan="3"class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58646">Epcnt only</span></p></th><th  colspan="3"class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58646">Sodium and UPF</span></p></th></tr><tr style="overflow-wrap:break-word;"><th class="cl-06ab78c6"><p class="cl-06ab4f2c"><span class="cl-06a58650">Characteristic</span></p></th><th class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58650">Beta</span></p></th><th class="cl-06ab78e4"><p class="cl-06ab4f40"><span class="cl-06a58650">95% CI</span><span class="cl-06a58664">1</span></p></th><th class="cl-06ab78e5"><p class="cl-06ab4f40"><span class="cl-06a58650">p-value</span></p></th><th class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58650">Beta</span></p></th><th class="cl-06ab78e4"><p class="cl-06ab4f40"><span class="cl-06a58650">95% CI</span><span class="cl-06a58664">1</span></p></th><th class="cl-06ab78e5"><p class="cl-06ab4f40"><span class="cl-06a58650">p-value</span></p></th><th class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58650">Beta</span></p></th><th class="cl-06ab78ee"><p class="cl-06ab4f40"><span class="cl-06a58650">95% CI</span><span class="cl-06a58664">1</span></p></th><th class="cl-06ab78e5"><p class="cl-06ab4f40"><span class="cl-06a58650">p-value</span></p></th><th class="cl-06ab78da"><p class="cl-06ab4f40"><span class="cl-06a58650">Beta</span></p></th><th class="cl-06ab78ee"><p class="cl-06ab4f40"><span class="cl-06a58650">95% CI</span><span class="cl-06a58664">1</span></p></th><th class="cl-06ab78e5"><p class="cl-06ab4f40"><span class="cl-06a58650">p-value</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-06ab78f8"><p class="cl-06ab4f41"><span class="cl-06a58646">Age</span></p></td><td class="cl-06ab78f9"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.38</span></p></td><td class="cl-06ab7902"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.34, 0.42</span></p></td><td class="cl-06ab7903"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab78f9"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.38</span></p></td><td class="cl-06ab7902"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.34, 0.42</span></p></td><td class="cl-06ab7903"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab78f9"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.37</span></p></td><td class="cl-06ab790c"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.33, 0.42</span></p></td><td class="cl-06ab7903"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab78f9"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.37</span></p></td><td class="cl-06ab790c"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.33, 0.42</span></p></td><td class="cl-06ab7903"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7916"><p class="cl-06ab4f41"><span class="cl-06a58646">Sex</span></p></td><td class="cl-06ab7917"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7920"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab792a"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7917"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7920"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab792a"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7917"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7934"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab792a"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7917"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7934"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab792a"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7935"><p class="cl-06ab4f4b"><span class="cl-06a58646">Male</span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7948"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7948"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7953"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7953"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab795c"><p class="cl-06ab4f4b"><span class="cl-06a58646">Female</span></p></td><td class="cl-06ab7966"><p class="cl-06ab4f4a"><span class="cl-06a58646">-6.3</span></p></td><td class="cl-06ab7967"><p class="cl-06ab4f4a"><span class="cl-06a58646">-7.5, -5.1</span></p></td><td class="cl-06ab7970"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab7966"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.8</span></p></td><td class="cl-06ab7967"><p class="cl-06ab4f4a"><span class="cl-06a58646">-7.1, -4.5</span></p></td><td class="cl-06ab7970"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab7966"><p class="cl-06ab4f4a"><span class="cl-06a58646">-6.3</span></p></td><td class="cl-06ab797a"><p class="cl-06ab4f4a"><span class="cl-06a58646">-7.5, -5.1</span></p></td><td class="cl-06ab7970"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab7966"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.8</span></p></td><td class="cl-06ab797a"><p class="cl-06ab4f4a"><span class="cl-06a58646">-7.1, -4.5</span></p></td><td class="cl-06ab7970"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab797b"><p class="cl-06ab4f41"><span class="cl-06a58646">(D) Valid BMI</span></p></td><td class="cl-06ab7984"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.40</span></p></td><td class="cl-06ab798e"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.24, 0.56</span></p></td><td class="cl-06ab798f"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab7984"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.39</span></p></td><td class="cl-06ab798e"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.23, 0.55</span></p></td><td class="cl-06ab798f"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab7984"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.40</span></p></td><td class="cl-06ab7998"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.24, 0.56</span></p></td><td class="cl-06ab798f"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td><td class="cl-06ab7984"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.39</span></p></td><td class="cl-06ab7998"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.23, 0.55</span></p></td><td class="cl-06ab798f"><p class="cl-06ab4f4a"><span class="cl-06a58646">&lt;0.001</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7935"><p class="cl-06ab4f41"><span class="cl-06a58646">educfinh</span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7948"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7948"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7953"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab793e"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7953"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7952"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7999"><p class="cl-06ab4f4b"><span class="cl-06a58646">1</span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ac"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ac"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79b6"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79b6"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">2</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">1.4</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.9, 7.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.7</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">2.0</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.0, 8.0</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">1.3</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.1, 7.6</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.7</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">1.7</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.4, 7.8</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">3</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.68</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.1, 5.4</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.8</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">1.0</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-3.7, 5.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.7</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.69</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.1, 5.4</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.8</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">1.0</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-3.7, 5.8</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.7</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">4</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.4</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.6, 1.9</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.4</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.5, 2.0</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.4</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.7, 1.9</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.4</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.5, 2.0</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.8</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.3, -0.27</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.030</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.7</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.2, -0.14</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.038</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.8</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.4, -0.30</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.029</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.7</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.3, -0.19</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.035</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.8</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-6.0, 0.33</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.079</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.6</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.8, 0.52</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.10</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.9</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-6.1, 0.29</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.075</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-2.7</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.9, 0.46</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.094</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">7</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.5</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.2, 1.2</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.3</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.4</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.1, 1.3</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.3</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.6</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.3, 1.2</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.3</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.6</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-4.3, 1.2</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.3</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">8</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-3.2</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.6, -0.79</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.009</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-3.1</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.5, -0.67</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.013</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-3.3</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.8, -0.86</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.008</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">-3.3</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-5.8, -0.82</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.009</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79df"><p class="cl-06ab4f41"><span class="cl-06a58646">EIMD_2010_quintile</span></p></td><td class="cl-06ab79e8"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79f2"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79fc"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79e8"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79f2"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79fc"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79e8"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a06"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79fc"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79e8"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a06"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79fc"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7999"><p class="cl-06ab4f4b"><span class="cl-06a58646">1</span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ac"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ac"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79b6"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab79a2"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79b6"><p class="cl-06ab4f4a"><span class="cl-06a58646">—</span></p></td><td class="cl-06ab79ad"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">2</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.66</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.63</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.65</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.61</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2, 2.4</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">3</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.77</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2, 2.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.4</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.65</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.3, 2.6</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.76</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.2, 2.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.4</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.64</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.3, 2.6</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.5</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">4</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.58</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.6, 2.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.53</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.6, 2.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.58</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.6, 2.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.53</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.6, 2.7</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab79c0"><p class="cl-06ab4f4b"><span class="cl-06a58646">5</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.52</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.5, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.49</span></p></td><td class="cl-06ab79ca"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.5, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.53</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.4, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab79c1"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.51</span></p></td><td class="cl-06ab79de"><p class="cl-06ab4f4a"><span class="cl-06a58646">-1.4, 2.5</span></p></td><td class="cl-06ab79d4"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7a07"><p class="cl-06ab4f41"><span class="cl-06a58646">Sodium (mg) diet only</span></p></td><td class="cl-06ab7a10"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a11"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a1a"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a10"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.00</span></p></td><td class="cl-06ab7a11"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.00, 0.00</span></p></td><td class="cl-06ab7a1a"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.043</span></p></td><td class="cl-06ab7a10"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a24"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a1a"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a10"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.00</span></p></td><td class="cl-06ab7a24"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.00, 0.00</span></p></td><td class="cl-06ab7a1a"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.029</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06ab7a2e"><p class="cl-06ab4f41"><span class="cl-06a58646">Epcnt_4</span></p></td><td class="cl-06ab7a2f"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a38"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a39"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a2f"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a38"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a39"><p class="cl-06ab4f4a"><span class="cl-06a58646"></span></p></td><td class="cl-06ab7a2f"><p class="cl-06ab4f4a"><span class="cl-06a58646">-0.01</span></p></td><td class="cl-06ab7a42"><p class="cl-06ab4f4a"><span class="cl-06a58646">-0.05, 0.03</span></p></td><td class="cl-06ab7a39"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.6</span></p></td><td class="cl-06ab7a2f"><p class="cl-06ab4f4a"><span class="cl-06a58646">-0.02</span></p></td><td class="cl-06ab7a42"><p class="cl-06ab4f4a"><span class="cl-06a58646">-0.06, 0.02</span></p></td><td class="cl-06ab7a39"><p class="cl-06ab4f4a"><span class="cl-06a58646">0.3</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="13"class="cl-06ab7a4c"><p class="cl-06ab4f54"><span class="cl-06a58664">1</span><span class="cl-06a58646">CI = Confidence Interval</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="8c58936f-19d2-417b-98b7-61d36274ed79"></div>
<script>
var dest = document.getElementById("8c58936f-19d2-417b-98b7-61d36274ed79");
var template = document.getElementById("0d3590a5-a2b3-40eb-95b1-d937e0e6c941");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```



```{=html}
<template id="4bbd68ab-1f7d-4e3d-bbb2-f19aae1e6575"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  border-color: transparent;
  caption-side: top;
}
.tabwid-caption-bottom table{
  caption-side: bottom;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td, .tabwid th {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
.katex-display {
    margin: 0 0 !important;
}
</style><div class="tabwid"><style>.cl-06ce44e6{}.cl-06c2bc52{font-family:'DejaVu Sans';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-06c79952{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06c79966{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-06c7c030{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 2pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06c7c044{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 2pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06c7c04e{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06c7c058{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06c7c062{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-06c7c06c{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-06ce44e6'><thead><tr style="overflow-wrap:break-word;"><th class="cl-06c7c030"><p class="cl-06c79952"><span class="cl-06c2bc52">Model</span></p></th><th class="cl-06c7c044"><p class="cl-06c79966"><span class="cl-06c2bc52">AIC</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-06c7c04e"><p class="cl-06c79952"><span class="cl-06c2bc52">No sodium or UPF</span></p></td><td class="cl-06c7c058"><p class="cl-06c79966"><span class="cl-06c2bc52">28,435.99</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06c7c04e"><p class="cl-06c79952"><span class="cl-06c2bc52">Sodium only</span></p></td><td class="cl-06c7c058"><p class="cl-06c79966"><span class="cl-06c2bc52">28,430.71</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06c7c04e"><p class="cl-06c79952"><span class="cl-06c2bc52">Epcnt only</span></p></td><td class="cl-06c7c058"><p class="cl-06c79966"><span class="cl-06c2bc52">28,437.53</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-06c7c062"><p class="cl-06c79952"><span class="cl-06c2bc52">Sodium and UPF</span></p></td><td class="cl-06c7c06c"><p class="cl-06c79966"><span class="cl-06c2bc52">28,431.29</span></p></td></tr></tbody></table></div></template>
<div class="flextable-shadow-host" id="b93724da-afff-470e-b0d0-49d985acb1d3"></div>
<script>
var dest = document.getElementById("b93724da-afff-470e-b0d0-49d985acb1d3");
var template = document.getElementById("4bbd68ab-1f7d-4e3d-bbb2-f19aae1e6575");
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

```
## [1] 0.02400091
```
we find that the lowest AIC is given by the model without UPF!!
Though all the models with UPF have a lower aic than the model without.



##  Summary of Results

There is a table with summary values for the key variables across the dataset.

Statistical analysis of the key variables shows the change in all the variables between the two time periods.

Confounding variables are analysed and show if there has been a significant change in the balance of the populations.


Regression shows a degree of association between the BP and UPF intake by weight and by energy.
It also shows the same for sodium intake.

Using Anova analysis of different multi variable regression models the key variables are significant for sodium in several models, and sometimes for UPF.


## Conclusion


The percentage by energy of NOVA group 4 foods decreased from 2008 to 2019.
The mean sodium intake in mg decreased.
The systolic BP has decreased.

There is a correlation between systolic BP and sodium intake.
There is a correlation between systolic BP and UPF intake.

The regression models identify that age and sex are statistically significant contributors to the BP and that bmi, educfinh, and IMD are also.

The regression models identify that sodium intake is an important contributor to any optimal model. That UPF intake is no longer significant, but still has some effect. 

#  Discussion

## Introduction to Discussion

This section will consider what the results mean. That will include how the context of the literature influences understanding of the values. The limitations of the study will be considered. opportunities for further research, and to influence policy will be considered.

##  Discussion of results

The study provides a number of results which will are first considered individually before being brought together to support the development of the dissertation.

### Data 

The data is well collected and comprehensive. There have been several changes over the course of the study. These changes have meant that collating the data was more than just bringing all the numbers together. 

In addition the differing take up rates between different groups in each of the cohorts meant that the numbers from each cohort are not comparable. This is overcome by using weighting factors to balance the datasets. This needs adjusting every time there is a new group added to the collected data set.

The analysis using these weighted datasets is performed using "survey" which is a software package used in r studio. 

The table (x) of data shows how the key data items alter over the survey years. In particular demonstrating the lack of BP data from year 11.

### comparative Data 


###  univariable regression 

####  of BP 

#### of other comparisons

### multivariable models

#### analysis for BP 

#### analysis for Sodium

#### analysis for UPF_4

## Limitations of Study

## Ideas for further research

## Ideas for policy
