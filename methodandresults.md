---
title: "bp upf and na"
output:
  html_document:
    toc: yes
    fig_caption: yes
    number_sections: yes
    keep_md: yes
  word_document: 
    toc: yes
    fig_caption: yes
    keep_md: yes
  pdf_document:
    toc: yes
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
These models are finally examined to identify the relative importance of the different variables in developing an optimal model. 
A summary and conclusion will bring all these together.


## Research Question

What proportion of the association between blood pressure (SBP/DBP) and UPF intake can be explained by the changes in salt intake in England between 2008 and 2019? 

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

Having taken up the study participants complete a 4 day food diary, and have an interview with a nurse which includes taking several measurements. Weighting is given for each annual survey to enable comparison across the years taking account for alterations in uptake and response completion.

### NDNS Dataset

The data from the NDNS study contains items about each individual,and their household.
It contains a table with each item of food as recorded in their diary.
There is a table with the overall intake of each of a large range of nutrients for the whole period.
This is calculated from the diary using nutritional tables which are published as part of the dataset.
The dataset is available via the UK national Data service for research purposes.


NDNS began before Monteiro's processing based classification, Nova , was developed. 
There is no record of Nova food type in NDNS. This has been calculated from the food descriptions. 
I have used a table from Rauber et al., but also one from Colombet (personal communication)

### University Research Governance and Ethical Review

The research has been carried out under the University governance. A proposal was discussed and agreed within the department. 
The need for ethical review was considered using the university research tool. 
The fact that the data is anonymised and there was no contact with participants means that there is minimal risk of harm to research participants.

Other ethical issues include data custodianship ensuring that the the rights of the owners of the data and of the participants are still considered as part of the process of analysis and dissemination of the research.

Issues around the power structures which lead to privilege one research project or proposal over another are considered more in the positionality section.

## Data Processing

The storage of the data is in keeping with the research governance agreements of the University and the Data set owners.
The data is read from its files using 'r-studio' with the processing being carried out using packages available from CRAN.
I have used files which had been amalgamated into four batches. These are 2008-2012, 2013-2014, 2015-2016, 2017-2019.

Once the data labels are made consistent across the batches, weighting recalculation is done.
This generates values which account for differences in population balance across the annual cohorts. 
These result from differences in compliance and uptake within and across the years.

The years are amalgamated and the nature of the variables is specified.





## Method for Data Analysis

### Descriptive data analysis


The data is summarised, with mean, median, and range for the key continuous variables.
The key variables are systolic BP (omsysval), UPF intake (Epcnt_4) and Sodium intake (sodiummg).
These variables are the ones which most relate to the research question.


There are a number of related variables in the dataset.
These were chosen for reliability and practicality.
These variables are ones which can also influence BP.
They include Age, Sex, BMI, height and weight.
Age at completion of education (educfinh), and IMD are also used. 
The population for years 1-4 are compared with those for years 9-11.

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

The percentage of the total intake by weight (pcnt_4) and by energy (Epcnt_4)is then calculated for each of the 4 Nova categories.
Nova group 4 or UPF intake is used for the study.

Mean values for the data are displayed with a comparison for weighted values.
The exposure variables are sodium intake (Sodiummg), and ultra processed food intake (Epcnt_4).
The outcome variable are the mean systolic blood pressure (omsysval). 


Key additional variables are considered in the later section looking at how they change across the populations.
Age, sex, and bmi are important contributors. Education, NSSEC and IMD are also looked at.

### Exclusions 

The relationship between salt and systolic blood pressure may be different in individuals with pathologically high BP. 
Those taking BP controlling medications may have a different relationship to sodium and UPF.
These patients were excluded from the main analysis.
Analysis was done with them included and this produced results in line with those presented, but of greater magnitude.
This additional analysis is not presented here.

### Comparative Analysis

The second phase of analysis uses standard techniques to compare the means of the populations. 
A student's t test is used as the populations are normally distributed continuous variables. 
The t tests compare the sodium, UPF, and systolic BP in the early cohort from teh later.
This will show how the intake and outcome have changed.

These are not the same participants so matched analysis, or time series analysis is not directly applicable.

Plots will be given to show the values in each of the available eleven cohorts.

Other variables in the data are compared across to assess how the data changes. 
t tests are again used for continuous data, and chi squared tests are used for categorical data.

### Linear Regression

Analysis of the correlation between BP and sodium intake, and then UPF intake is done using linear regression. 
This will give an indicator of the direction, and strength of any relationship between the variables.
There is also anova analysis to understand the statistical significance of these results.

### Multiple Regression

Multivariable regression models are then developed to understand the interactions between variables and to develop a mathematical model of the relationship. 
The optimal model is one which best explains the pattern of data, but which also makes practical sense for the wider understanding of relationships.
Assessment techniques try to understand the importance of including particular variables, and the form in which they are best included. 

### AIC and sensitivty Anaylsis

This section compares models side by side using assessment techniques to identify the best way of describing the data. 
The 'best' in part is determined by the whether a model is needed to predict more data, or just to understand the data available.
Here it is about how best to describe the relationship between Na, UPF, and BP.

##  Method Conclusion

This section has highlighted how the material for the study is brought together and how the governance and ethics fit with the data collection, processing and analysis to help us to derive the results which will be presented in the next section.






























































































































#  Results 
##  Results Introduction

The results derive from the method outlined above and follow the pattern described. 
I will try to discuss the results having already described the method.



## Descriptive Data Analysis

This first table highlights the data from the years 2008-2012 at the beginning of the data collection.

```
##            mean     SE
## Sodiummg 2181.9 16.835
```

```
##            mean     SE
## omsysval 124.09 0.4614
```

```
##           mean     SE
## Epcnt_4 49.147 0.3052
```

```
##   Sodiummg    Epcnt_4   omsysval 
## 2181.90505   49.14734  124.09433
```

```
## [1] "tbl_svy"        "survey.design2" "survey.design"
```

```{=html}
<div id="xramawlzgf" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xramawlzgf .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xramawlzgf .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xramawlzgf .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#xramawlzgf .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xramawlzgf .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xramawlzgf .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xramawlzgf .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xramawlzgf .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xramawlzgf .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xramawlzgf .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xramawlzgf .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xramawlzgf .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xramawlzgf .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#xramawlzgf .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xramawlzgf .gt_from_md > :first-child {
  margin-top: 0;
}

#xramawlzgf .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xramawlzgf .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xramawlzgf .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xramawlzgf .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xramawlzgf .gt_row_group_first td {
  border-top-width: 2px;
}

#xramawlzgf .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xramawlzgf .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xramawlzgf .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xramawlzgf .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xramawlzgf .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xramawlzgf .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xramawlzgf .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xramawlzgf .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xramawlzgf .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xramawlzgf .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xramawlzgf .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xramawlzgf .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xramawlzgf .gt_left {
  text-align: left;
}

#xramawlzgf .gt_center {
  text-align: center;
}

#xramawlzgf .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xramawlzgf .gt_font_normal {
  font-weight: normal;
}

#xramawlzgf .gt_font_bold {
  font-weight: bold;
}

#xramawlzgf .gt_font_italic {
  font-style: italic;
}

#xramawlzgf .gt_super {
  font-size: 65%;
}

#xramawlzgf .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#xramawlzgf .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xramawlzgf .gt_indent_1 {
  text-indent: 5px;
}

#xramawlzgf .gt_indent_2 {
  text-indent: 10px;
}

#xramawlzgf .gt_indent_3 {
  text-indent: 15px;
}

#xramawlzgf .gt_indent_4 {
  text-indent: 20px;
}

#xramawlzgf .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;Characteristic&lt;/strong&gt;"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;N = 652&lt;/strong&gt;&lt;sup class=&quot;gt_footnote_marks&quot;&gt;1&lt;/sup&gt;"><strong>N = 652</strong><sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="label" class="gt_row gt_left">Sodium (mg) diet only</td>
<td headers="stat_0" class="gt_row gt_center">2,139 (746)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">Epcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">48 (14)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">pcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">22 (14)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">omsysval</td>
<td headers="stat_0" class="gt_row gt_center">123 (13)</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="2"><sup class="gt_footnote_marks">1</sup> Mean (SD)</td>
    </tr>
  </tfoot>
</table>
</div>
```

```{=html}
<div id="szxucglmbx" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#szxucglmbx .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#szxucglmbx .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#szxucglmbx .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#szxucglmbx .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#szxucglmbx .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#szxucglmbx .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#szxucglmbx .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#szxucglmbx .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#szxucglmbx .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#szxucglmbx .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#szxucglmbx .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#szxucglmbx .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#szxucglmbx .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#szxucglmbx .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#szxucglmbx .gt_from_md > :first-child {
  margin-top: 0;
}

#szxucglmbx .gt_from_md > :last-child {
  margin-bottom: 0;
}

#szxucglmbx .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#szxucglmbx .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#szxucglmbx .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#szxucglmbx .gt_row_group_first td {
  border-top-width: 2px;
}

#szxucglmbx .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#szxucglmbx .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#szxucglmbx .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#szxucglmbx .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#szxucglmbx .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#szxucglmbx .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#szxucglmbx .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#szxucglmbx .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#szxucglmbx .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#szxucglmbx .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#szxucglmbx .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#szxucglmbx .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#szxucglmbx .gt_left {
  text-align: left;
}

#szxucglmbx .gt_center {
  text-align: center;
}

#szxucglmbx .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#szxucglmbx .gt_font_normal {
  font-weight: normal;
}

#szxucglmbx .gt_font_bold {
  font-weight: bold;
}

#szxucglmbx .gt_font_italic {
  font-style: italic;
}

#szxucglmbx .gt_super {
  font-size: 65%;
}

#szxucglmbx .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#szxucglmbx .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#szxucglmbx .gt_indent_1 {
  text-indent: 5px;
}

#szxucglmbx .gt_indent_2 {
  text-indent: 10px;
}

#szxucglmbx .gt_indent_3 {
  text-indent: 15px;
}

#szxucglmbx .gt_indent_4 {
  text-indent: 20px;
}

#szxucglmbx .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;Characteristic&lt;/strong&gt;"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;N = 831&lt;/strong&gt;&lt;sup class=&quot;gt_footnote_marks&quot;&gt;1&lt;/sup&gt;"><strong>N = 831</strong><sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="label" class="gt_row gt_left">Sodiummg</td>
<td headers="stat_0" class="gt_row gt_center">2,172 (715)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">Epcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">47 (14)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">pcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">22 (14)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">omsysval</td>
<td headers="stat_0" class="gt_row gt_center">124 (13)</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="2"><sup class="gt_footnote_marks">1</sup> Mean (SD)</td>
    </tr>
  </tfoot>
</table>
</div>
```
The second table show the data from the second cohort 2017-19.
The weighted values follow the unweighted/raw values.


```
##  Sodiummg   Epcnt_4  omsysval 
## 1914.3144   45.9204  121.6101
```

```
##             Sodiummg  Epcnt_4 omsysval
## means200812 2181.905 49.14734 124.0943
## means201719 1914.314 45.92040 121.6101
```

```
## [1] "tbl_svy"        "survey.design2" "survey.design"
```

```{=html}
<div id="uxdxsdddka" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#uxdxsdddka .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#uxdxsdddka .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uxdxsdddka .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#uxdxsdddka .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uxdxsdddka .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uxdxsdddka .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxdxsdddka .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uxdxsdddka .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#uxdxsdddka .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#uxdxsdddka .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#uxdxsdddka .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#uxdxsdddka .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#uxdxsdddka .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#uxdxsdddka .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#uxdxsdddka .gt_from_md > :first-child {
  margin-top: 0;
}

#uxdxsdddka .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uxdxsdddka .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#uxdxsdddka .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#uxdxsdddka .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#uxdxsdddka .gt_row_group_first td {
  border-top-width: 2px;
}

#uxdxsdddka .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxdxsdddka .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#uxdxsdddka .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#uxdxsdddka .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxdxsdddka .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxdxsdddka .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#uxdxsdddka .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#uxdxsdddka .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uxdxsdddka .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uxdxsdddka .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxdxsdddka .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uxdxsdddka .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#uxdxsdddka .gt_left {
  text-align: left;
}

#uxdxsdddka .gt_center {
  text-align: center;
}

#uxdxsdddka .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uxdxsdddka .gt_font_normal {
  font-weight: normal;
}

#uxdxsdddka .gt_font_bold {
  font-weight: bold;
}

#uxdxsdddka .gt_font_italic {
  font-style: italic;
}

#uxdxsdddka .gt_super {
  font-size: 65%;
}

#uxdxsdddka .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#uxdxsdddka .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#uxdxsdddka .gt_indent_1 {
  text-indent: 5px;
}

#uxdxsdddka .gt_indent_2 {
  text-indent: 10px;
}

#uxdxsdddka .gt_indent_3 {
  text-indent: 15px;
}

#uxdxsdddka .gt_indent_4 {
  text-indent: 20px;
}

#uxdxsdddka .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;Characteristic&lt;/strong&gt;"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;N = 592&lt;/strong&gt;&lt;sup class=&quot;gt_footnote_marks&quot;&gt;1&lt;/sup&gt;"><strong>N = 592</strong><sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="label" class="gt_row gt_left">Sodium (mg) diet only</td>
<td headers="stat_0" class="gt_row gt_center">1,995 (749)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">Epcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">43 (14)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">pcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">20 (15)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">omsysval</td>
<td headers="stat_0" class="gt_row gt_center">120 (13)</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="2"><sup class="gt_footnote_marks">1</sup> Mean (SD)</td>
    </tr>
  </tfoot>
</table>
</div>
```

```{=html}
<div id="xlqugcpsis" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xlqugcpsis .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xlqugcpsis .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xlqugcpsis .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#xlqugcpsis .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xlqugcpsis .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xlqugcpsis .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xlqugcpsis .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xlqugcpsis .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xlqugcpsis .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xlqugcpsis .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xlqugcpsis .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xlqugcpsis .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xlqugcpsis .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#xlqugcpsis .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xlqugcpsis .gt_from_md > :first-child {
  margin-top: 0;
}

#xlqugcpsis .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xlqugcpsis .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xlqugcpsis .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xlqugcpsis .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xlqugcpsis .gt_row_group_first td {
  border-top-width: 2px;
}

#xlqugcpsis .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xlqugcpsis .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xlqugcpsis .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xlqugcpsis .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xlqugcpsis .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xlqugcpsis .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xlqugcpsis .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xlqugcpsis .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xlqugcpsis .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xlqugcpsis .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xlqugcpsis .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xlqugcpsis .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xlqugcpsis .gt_left {
  text-align: left;
}

#xlqugcpsis .gt_center {
  text-align: center;
}

#xlqugcpsis .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xlqugcpsis .gt_font_normal {
  font-weight: normal;
}

#xlqugcpsis .gt_font_bold {
  font-weight: bold;
}

#xlqugcpsis .gt_font_italic {
  font-style: italic;
}

#xlqugcpsis .gt_super {
  font-size: 65%;
}

#xlqugcpsis .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#xlqugcpsis .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xlqugcpsis .gt_indent_1 {
  text-indent: 5px;
}

#xlqugcpsis .gt_indent_2 {
  text-indent: 10px;
}

#xlqugcpsis .gt_indent_3 {
  text-indent: 15px;
}

#xlqugcpsis .gt_indent_4 {
  text-indent: 20px;
}

#xlqugcpsis .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;Characteristic&lt;/strong&gt;"><strong>Characteristic</strong></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="&lt;strong&gt;N = 1,150&lt;/strong&gt;&lt;sup class=&quot;gt_footnote_marks&quot;&gt;1&lt;/sup&gt;"><strong>N = 1,150</strong><sup class="gt_footnote_marks">1</sup></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="label" class="gt_row gt_left">Sodiummg</td>
<td headers="stat_0" class="gt_row gt_center">2,046 (782)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">Epcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">43 (14)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">pcnt_4</td>
<td headers="stat_0" class="gt_row gt_center">21 (16)</td></tr>
    <tr><td headers="label" class="gt_row gt_left">omsysval</td>
<td headers="stat_0" class="gt_row gt_center">120 (13)</td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="2"><sup class="gt_footnote_marks">1</sup> Mean (SD)</td>
    </tr>
  </tfoot>
</table>
</div>
```
These tables show that there has been a change between the two cohorts.
They also show that the weighted samples are different to raw samples identifying the importance of analysing the data across weighted groups.






![](methodandresults_files/figure-html/unnamed-chunk-16-1.png)<!-- -->![](methodandresults_files/figure-html/unnamed-chunk-16-2.png)<!-- -->![](methodandresults_files/figure-html/unnamed-chunk-16-3.png)<!-- -->
These plots show how the percentage of energy derived from UPF, the sodium intake, and the Systolic bp have changed over the years.
The graphs show that there is not a visible difference between the years. Statistical analysis will follow.


## Comparative analysis

### Comparison of key variables

 comparing UPF and Sodium intake calculated from diet

In order to confirm there has been a change in intake a t.test compares the means of the two samples.
One compares the means of sodium in years 1-4 with sodium in years 9-11.

The second compares the means of pcnt UPF intake in over the same periods.
A third compares the percentage energy provided by UPF.


```
## 
## 	Design-based t-test
## 
## data:  Sodiummg ~ (SurveyYear >= 5)
## t = -1.798, df = 533, p-value = 0.07274
## alternative hypothesis: true difference in mean is not equal to 0
## 95 percent confidence interval:
##  -160.020319    7.077685
## sample estimates:
## difference in mean 
##          -76.47132
```

```
## 
## 	Design-based t-test
## 
## data:  Epcnt_4 ~ (SurveyYear >= 5)
## t = -3.1937, df = 533, p-value = 0.001488
## alternative hypothesis: true difference in mean is not equal to 0
## 95 percent confidence interval:
##  -4.290859 -1.022575
## sample estimates:
## difference in mean 
##          -2.656717
```

```
## 
## 	Design-based t-test
## 
## data:  EnergykJ_4 ~ (SurveyYear >= 5)
## t = 0.25042, df = 533, p-value = 0.8024
## alternative hypothesis: true difference in mean is not equal to 0
## 95 percent confidence interval:
##  -592.1272  765.1474
## sample estimates:
## difference in mean 
##           86.51013
```

```
##        Var statistic  p.value
## 1: Epcnt_4   -3.1940 0.001488
## 2:     EkJ    0.2504 0.802400
## 3:      Na   -1.7980 0.072740
```

It seems the mean percentage UPF intake changes from 48.8% to 59.2% energy and this increase is statistically significant.
The mean sodium intake has changed from  2156.30 mg to 2574.33 mg and is also statistically significant with a p value less than 0.05.

 what about outcome BP?

The next t tests compare mean systolic values in the two time periods and then the mean diastolic values.


```
##    Var statistic   p.value
## 1: Sys    -13.11 2.971e-34
```

```
## 
## 	Design-based t-test
## 
## data:  omsysval ~ SurveyYear >= 5
## t = -13.115, df = 533, p-value < 2.2e-16
## alternative hypothesis: true difference in mean is not equal to 0
## 95 percent confidence interval:
##  -21.76629 -16.09515
## sample estimates:
## difference in mean 
##          -18.93072
```

There is a change in mean systolic from 122-152 mmHg with a p value of 3.112e -7.

In summary there is statistically significant change in UPF and Na intake and also in both systolic and diastolic pressures.

Has another factor affected the BP change ?

### Comparative analysis of other variables

How are variables distributed between the two cohorts. 
The NDNS dataset was weighted to keep many of these the same between datasets.
Continuous variables are assessed using ttests and categorical variables using chi squared tests to give p.values.

  Age and Sex
The age of the two datasets has changed but not in a statistically significant way.


```r
ttestage <- svyttest(Age ~ SurveyYear >=6, ndns_1_11ed)
ttestage$statistic
```

```
##         t 
## -3.029559
```

```r
#ttestage$p.value
ttestage$conf.int
```

```
##                         2.5 %     97.5 %
## SurveyYear >= 6TRUE -4.473062 -0.9540307
## attr(,"conf.level")
## [1] 0.95
```



There is a statistically significant change in the sex distribution of the two groups.

```r
tablesex <- svytable(~Sex+(SurveyYear >=5), ndns_1_11ed)
tablesex
```

```
##         SurveyYear >= 5
## Sex          FALSE      TRUE
##   Male    292.7118 1822.0360
##   Female  537.8931 1925.6327
```

```r
sexchi <- svychisq(~Sex+SurveyYear , ndns_1_11ed)
sexchi$observed
```

```
##         SurveyYear
## Sex              1         2         3         4         5         6         7
##   Male    50.06198  47.96937  32.01676  44.04683 228.00517 172.35312 180.69957
##   Female  70.41059  84.51633  74.71734  90.27609 230.15312 187.31313 158.33500
##         SurveyYear
## Sex              8         9        10
##   Male   177.33201 157.79591 167.49868
##   Female 210.83607 155.19802 203.46491
```

```r
#ttestage$p.value
sexchi$p.value 
```

```
##   X-squared 
## 0.002174653
```
This might be due to differences in the numbers of excluded participants.
In particular there may be more younger people and women taking e.g. bblockers in one group.



This table suggests that there is a significant difference between the bmi of the groups.


```r
ttestbmi <- svyttest(bmival~(SurveyYear >=5), ndns_1_11ed)
ttestbmi$statistic
```

```
##         t 
## -3.878727
```

```r
ttestbmi$conf.int
```

```
##                         2.5 %     97.5 %
## SurveyYear >= 5TRUE -1.916213 -0.6277231
## attr(,"conf.level")
## [1] 0.95
```
There is a difference in the age of finishing education.

```r
tableedu <- svytable(~educfinh+(SurveyYear >=5), ndns_1_11ed)
tableedu
```

```
##         SurveyYear >= 5
## educfinh      FALSE       TRUE
##        1   23.45204   50.28225
##        2    0.00000   10.89498
##        3   27.28979   46.84485
##        4  158.49005  300.15352
##        5  211.63321  861.24032
##        6   81.30505  199.83061
##        7   94.79068  411.44564
##        8  233.64408 1051.93547
```

```r
educhi <- svychisq(~educfinh+SurveyYear , ndns_1_11ed)
educhi$statistic
```

```
##        F 
## 1.659393
```

```r
#ttestage$p.value
educhi$p.value 
```

```
##   X-squared 
## 0.003125183
```


```r
tableimd <- svytable(~EIMD_2010_quintile +(SurveyYear >=5), ndns_1_11ed)
tableimd
```

```
##                   SurveyYear >= 5
## EIMD_2010_quintile    FALSE     TRUE
##                  1 203.9000 667.3112
##                  2 144.9402 700.1465
##                  3 120.7524 575.2667
##                  4 119.1947 635.9267
##                  5 116.0614 571.3128
```

```r
imdchi <- svychisq(~EIMD_2010_quintile+SurveyYear , ndns_1_11ed)
imdchi$observed
```

```
##                   SurveyYear
## EIMD_2010_quintile          1          2          3          4          5
##                  1  34.450634  43.081972  30.332980  36.167257 107.210530
##                  2  42.001338  15.543889  19.379452  25.459584 112.881362
##                  3   6.718736  24.981581  18.047432  35.550539  76.426839
##                  4  20.972432  24.586130  17.529068  21.110252  86.366120
##                  5  18.279286  26.998083  17.859308  18.847907  95.658774
##                   SurveyYear
## EIMD_2010_quintile          6          7          8          9         10
##                  1  67.563764  69.476533  65.589014  70.384572  91.157343
##                  2  88.956205  61.745950  80.788989  71.459717  78.744100
##                  3  61.295359  71.839752  81.801002  53.849555  61.149964
##                  4  67.666285  85.070207  76.370503  59.310644  74.428350
##                  5  66.718229  52.236115  72.709665  49.016260  67.230437
```

```r
#ttestage$p.value
imdchi$p.value 
```

```
## X-squared 
## 0.5773836
```

The differences in qimd, are not statistically significant.

These values identify a significant difference in the number of vegetarians

```r
tableveg <- svytable(~vegetarn +(SurveyYear >=5), ndns_1_11ed)
tableveg
```

```
##                 SurveyYear >= 5
## vegetarn              FALSE       TRUE
##   vegetarian       10.91746  126.62985
##   vegan             0.00000   19.83417
##   not vegetarian  819.68744 3601.20467
```

```r
vegchi <- svychisq(~vegetarn+ SurveyYear , ndns_1_11ed)
vegchi$observed
```

```
##                 SurveyYear
## vegetarn                   1           2           3           4           5
##   vegetarian       0.4237189   0.3356719   1.2994000   4.4345398  16.4932611
##   vegan            0.0000000   0.0000000   0.0000000   0.0000000   1.3285491
##   not vegetarian 120.0488463 132.1500282 105.4347022 129.8883802 440.3364792
##                 SurveyYear
## vegetarn                   6           7           8           9          10
##   vegetarian      11.6634214   5.4696643  12.9289343   9.8631868  18.8966220
##   vegan            0.0000000   1.1898140   0.9294605   6.5136847   1.8351724
##   not vegetarian 348.0028211 332.3750889 374.3096934 296.6170594 350.2317998
```

```r
#ttestage$p.value
vegchi$p.value 
```

```
##  X-squared 
## 0.05068419
```




## Regression Analysis

#### Linear Regression

Simple linear regression equations look for the relationship between the dependant variable, and the independent variable.
For these I am looking at the whole dataset 



The regression models are examined for Sodium and UP against BP.
These use the populations where participants have been excluded. 
(analysis including these makes no difference!!)



 omsysval is compared to EnergykJ 


```
##   (Intercept)    EnergykJ_4 
##  1.111762e+02 -2.157041e-04
```

then sodiummg


```
##   (Intercept)      Sodiummg 
## 111.957112528  -0.001816932
```

There are relationships between Na and g pcnt as well as E pcnt and omsysval .


In conclusion the linear regression models show that there are  correlations between the systolic BP and each of the key variables.



#### multi variable regression

This uses a model of variables.
It can highlight the contributions of each variable.
The intention is to develop an optimal model which mathematically describes the situation.

In particular the research question asks about the relationship between Sodium and UPF intake with BP.
The models will reflect this question with models looking to include or exclude particular variables.
Comparisons between these models are then made using sensitivity analysis, identifying how sensitive the model is to sodium, or other factors

This first model looks at the relationships between BP and Age and Sex education and IMD all of which may have an effect on BP. This model excludes UPF and Na.


```
##         (Intercept)                 Age           SexFemale              bmival 
##          85.8191145           0.3083563          -2.7207680           0.6405843 
##           educfinh2           educfinh3           educfinh4           educfinh5 
##          18.9841272          -2.2688388          -1.8389628          -3.7693031 
##           educfinh6           educfinh7           educfinh8 EIMD_2010_quintile2 
##          -9.6013030          -2.4369487          -1.3725591          -2.0401996 
## EIMD_2010_quintile3 EIMD_2010_quintile4 EIMD_2010_quintile5 
##          -1.9970928          -4.1452849          -5.4437472
```

```
## Anova table:  (Rao-Scott LRT)
## svyglm(formula = omsysval ~ Age, design = ndns_1_11ed, na.action = na.exclude)
##                        stats      DEff        df ddf         p    
## Age                  57478.6    2392.5       1.0 533 1.380e-06 ***
## Sex                   5084.8    2683.0       1.0 532    0.1719    
## bmival               73384.6    3222.5       1.0 516 2.592e-06 ***
## educfinh           1192051.5    1924.3       7.0 440 < 2.2e-16 ***
## EIMD_2010_quintile  503047.4    2556.3       4.0 279 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 14303.28
```
This first model shows that all these variables, Age, Sex, education, IMD,  and bmi, give statistically significant coefficients for the model which suggests that they do have an important part to play in any optimal model.

The next model adds Sodiummg.


```
##         (Intercept)                 Age           SexFemale            Sodiummg 
##        89.076363767         0.298018706        -3.426440252        -0.001237575 
##              bmival           educfinh2           educfinh3           educfinh4 
##         0.642400711        18.625586950        -2.533634585        -1.700732289 
##           educfinh5           educfinh6           educfinh7           educfinh8 
##        -3.581066217        -9.584009469        -2.213865629        -1.262891941 
## EIMD_2010_quintile2 EIMD_2010_quintile3 EIMD_2010_quintile4 EIMD_2010_quintile5 
##        -2.007001284        -1.843283610        -4.102288897        -5.527442694
```

```
## Anova table:  (Rao-Scott LRT)
## svyglm(formula = omsysval ~ Age, design = ndns_1_11ed, na.action = na.exclude)
##                        stats      DEff        df ddf         p    
## Age                  57478.6    2392.5       1.0 533 1.380e-06 ***
## Sex                   5084.8    2683.0       1.0 532    0.1719    
## Sodiummg              4138.9    3754.6       1.0 531    0.2959    
## bmival               74949.8    3205.3       1.0 515 1.915e-06 ***
## educfinh           1187410.8    1936.1       7.0 439 < 2.2e-16 ***
## EIMD_2010_quintile  503387.4    2573.1       4.0 278 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```
This second model gives Sodiummg, educfinh, and IMD statistical significance. VitaminD shows no statistical significance, TotalEMJ and sqrt(pcnt) and ethgrp2 all have limited significance.



Now we add UPF as total energy from nova 4 or UPF


```
##         (Intercept)                 Age           SexFemale            Sodiummg 
##        8.858537e+01        3.013972e-01       -3.357285e+00       -1.548927e-03 
##          EnergykJ_4              bmival           educfinh2           educfinh3 
##        5.930366e-05        6.440246e-01        1.885612e+01       -2.564861e+00 
##           educfinh4           educfinh5           educfinh6           educfinh7 
##       -1.655187e+00       -3.530697e+00       -9.519688e+00       -2.095537e+00 
##           educfinh8 EIMD_2010_quintile2 EIMD_2010_quintile3 EIMD_2010_quintile4 
##       -1.122974e+00       -2.024350e+00       -1.811938e+00       -4.121010e+00 
## EIMD_2010_quintile5 
##       -5.547742e+00
```

```
## Anova table:  (Rao-Scott LRT)
## svyglm(formula = omsysval ~ Age, design = ndns_1_11ed, na.action = na.exclude)
##                         stats       DEff         df ddf         p    
## Age                  57478.64    2392.50       1.00 533 1.380e-06 ***
## Sex                   5084.77    2683.00       1.00 532    0.1719    
## Sodiummg              4138.89    3754.60       1.00 531    0.2959    
## EnergykJ_4             276.15    2939.90       1.00 530    0.7528    
## bmival               74994.97    3206.10       1.00 514 1.908e-06 ***
## educfinh           1187565.88    1950.40       7.00 438 < 2.2e-16 ***
## EIMD_2010_quintile  503072.17    2565.00       4.00 277 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

UPF does not seem significant...

but when removing sodiummg


```
##         (Intercept)                 Age           SexFemale          EnergykJ_4 
##        8.682514e+01        3.037660e-01       -2.910149e+00       -4.552691e-05 
##              bmival           educfinh2           educfinh3           educfinh4 
##        6.396885e-01        1.873790e+01       -2.296008e+00       -1.847230e+00 
##           educfinh5           educfinh6           educfinh7           educfinh8 
##       -3.771615e+00       -9.647342e+00       -2.484703e+00       -1.458792e+00 
## EIMD_2010_quintile2 EIMD_2010_quintile3 EIMD_2010_quintile4 EIMD_2010_quintile5 
##       -2.020469e+00       -1.991450e+00       -4.122609e+00       -5.444328e+00
```

```
## Anova table:  (Rao-Scott LRT)
## svyglm(formula = omsysval ~ Age, design = ndns_1_11ed, na.action = na.exclude)
##                        stats      DEff        df ddf         p    
## Age                  57478.6    2392.5       1.0 533  1.38e-06 ***
## Sex                   5084.8    2683.0       1.0 532    0.1719    
## EnergykJ_4            2545.0    3770.4       1.0 531    0.4114    
## bmival               74185.1    3212.3       1.0 515  2.21e-06 ***
## educfinh           1190031.4    1929.2       7.0 439 < 2.2e-16 ***
## EIMD_2010_quintile  501869.5    2556.2       4.0 278 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```
the UPF becomes significant! 
This suggests that the effect of UPF is mediated by Sodium!!

comparing AIC for these three models 


```r
lmM$aic
```

```
## [1] 14304.48
```

```r
lmMna$aic
```

```
## [1] 14305.2
```

```r
lmM2$aic
```

```
## [1] 14306.39
```

```r
#AIC(lmM,lmMna,lmM2)
sense1 <- (lm1AS$aic - lmM2$aic)*100/lm1AS$aic 
sense1
```

```
## [1] -0.02169342
```
we find that the lowest AIC is given by the model without UPF!!
Though all the models with UPF have a lower aic than the model without.



###  Summary of Results

There is a table with summary values for the key variables across the dataset.

Statistical analysis of the key variables shows the change in all the variables between the two time periods.

Confounding variables are analysed and show if there has been a significant change in the balance of the populations.


Regression shows a degree of association between the BP and UPF intake by weight and by energy.
It also shows the same for sodium intake.

Using Anova analysis of different multi variable regression models the key variables are significant for sodium in several models, and sometimes for UPF.


## Conclusion

The percentage by weight of NOVA group 4 foods increased from 2008 to 2019.
The percentage by energy of NOVA group 4 foods increased from 2008 to 2019.
The mean sodium intake in mg increased between the two time periods.
The systolic and diastolic BP have increased between the two time periods.

In each period there is a correlation between systolic BP and sodium intake.
In each period there is a correlation between systolic BP and UPF intake.

The regression models identify that age and sex are statistically significant contributors to the BP.

The regression models identify that sodium intake is an important contributor to any optimal model. That when sodium intake is present UPF intake is no longer significant, but still has some effect. 

