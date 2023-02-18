---
title: "bp upf and na"
output:
  html_document:
    toc: yes
    fig_caption: yes
    number_sections: yes
    keep_md: yes
  word_document: default
  pdf_document:
    toc: yes
---

# Dissertation calculation and results
## BP and UPF and Na in NDNS


###  Results

This section will show how the method has been applied and identify what the calculations show. 
It will be laid out with a brief resume of the data source, followed by descriptive data analysis. 
This will identify relevant variables and their relationships within the data. 
This will be followed by a statistical analysis section. This will involve statistical tests of key variables, but also of confounding variables.
The next section will include regression analysis with simple linear regressions of the key variables.
It will also include multi variable models which will also use regression to develop more sophisticated models.
Comparison of models will enable an understanding of the importance of including particular variables. 
This will give an opportunity to understand whether the role of salt affects the model predictions significantly.







### Data Source

The dataset is from NDNS @universityofcambridgeNDNSRPNationalDiet2022. This is a rolling annual survey which aims to collect a sample spread between children and adults, across the four countries of the UK, and to maintain representative sizes when analysed by age sex and ethnicity.


Provided in tables in various formats. The dataset is large and covers a great deal. This study only requires a subset of the data.The data include more categories than needed so subsets are taken. I use all the samples, but only some of the data categories directly related to this project.


The data are weighted by the research group to ensure representative sizes based on sex and age groupings and response. This allows for differences in uptake and dropout in each annual sample.











### Data preparation

The data is then arranged into a format which allows processing.
This includes identifying continuous and categorical variables. 
It also includes naming the categories of the categorical variables.

 
 
 

 
 








The data is then combined into two comprehensive tables.












###  Exclusions 
eg hypertensives and pregnant/breastfeeding
possible future set with only England?

I have excluded those who are taking diuretics, bblockers, ace inhibitors, calcium channel blockers and other bp drugs. There are no participants who are pregnant or breastfeeding. 
I have included normotensive untreated individuals. 


 



## Descriptive data analysis

This section will review the data which will be used for the statistical analysis.
The data is summarised, with Mean median, and range for continuous variables. 
Counts are available for categorical variables.
First for years 1-4 then for 9-11.

The key variables are omsysval which is the dependant variable, and UPF proportion intake and sodiummg. 
These variables are the ones which most relate to the research question. 
There are a number of related variables in the dataset. These were chosen for reliability and practicality.
The omsysval is a validated measurement with significant quality assessment within the dataset. 
Raw systolic values are present in the dataset but are made up of data with issues around quality. 
In particular the systolic values are assessed for the effects of exercise, temperature and ill health. 

The sodium value is one calculated from intake based on food diaries and standard food nutrient values.
This is dependant on a lot of processing, but but only reflects standard foods. Serum sodium values are available for the early dataset, but not the later one. 
There are also values for 24 urinary sodium which is probably a better indicator of dietary sodium for parts of teh dataset, but again these are not found in both time periods.



Summary Description of the key variables of sodium intake, Total energy intake, and BP
Show the data. This is the whole dataset.



```
##       Min.  1st Qu.   Median     Mean  3rd Qu.    Max.    names
## 1: 388.600 1635.000 2032.000 2119.000 2532.000 5027.00 Sodiummg
## 2: 438.200 1425.000 1808.000 1896.000 2255.000 6854.00 Sodiummg
## 3:   2.421    5.917    7.040    7.339    8.625   16.17 TotalEMJ
## 4:   1.886    5.644    7.014    7.163    8.300   15.82 TotalEMJ
## 5:  77.500  108.500  119.500  119.800  130.000  159.00 omsysval
## 6:  70.500  104.000  112.500  114.500  123.000  159.00 omsysval
## 7:  39.000   63.500   70.500   70.420   78.500   93.50 omdiaval
## 8:  41.000   60.000   67.500   67.820   75.000   94.00 omdiaval
```

![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-1.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-2.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-3.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-4.png)<!-- -->




This is just adults >18. The range of values is different to the standard population.


```
##       Min.  1st Qu.   Median     Mean  3rd Qu.    Max.    names
## 1: 605.300 1629.000 2039.000 2134.000 2590.000 5027.00 Sodiummg
## 2: 438.200 1456.000 1903.000 2009.000 2408.000 6854.00 Sodiummg
## 3:   2.421    6.022    7.058    7.432    8.848   16.17 TotalEMJ
## 4:   1.886    6.062    7.339    7.541    8.765   15.82 TotalEMJ
## 5:  90.000  114.500  123.200  124.200  133.000  159.00 omsysval
## 6:  87.500  110.500  120.000  120.900  129.500  159.00 omsysval
## 7:  46.000   67.000   73.500   73.590   80.500   93.50 omdiaval
## 8:  47.000   65.000   72.000   72.020   79.000   94.00 omdiaval
```

This is just Male participants again showing the changes from the overall population.



```
##       Min.  1st Qu.   Median     Mean  3rd Qu.    Max.    names
## 1: 388.600 1950.000 2402.000 2446.000 2955.000 5027.00 Sodiummg
## 2: 563.100 1590.000 1972.000 2099.000 2542.000 5166.00 Sodiummg
## 3:   2.421    6.923    8.336    8.390    9.895   16.17 TotalEMJ
## 4:   3.345    6.393    7.588    7.907    9.350   15.82 TotalEMJ
## 5:  77.500  112.500  122.500  122.800  132.800  158.00 omsysval
## 6:  83.500  105.500  117.000  117.300  127.500  155.00 omsysval
## 7:  39.000   63.500   70.500   70.280   79.000   91.50 omdiaval
## 8:  42.500   59.500   67.000   67.610   75.500   93.50 omdiaval
```






### Statistical analysis of Confounding variables
are confounders consistent or are they different between the two datasets
The NDNS dataset was weighted to keep many of these the same between datasets. 



```
##                        name    pvalue
##  1:                     Age 1.238e-10
##  2:               Calciummg 8.149e-01
##  3:            Totalsugarsg 1.577e-04
##  4:                Glucoseg 7.883e-05
##  5:               Fructoseg 7.483e-03
##  6:                Sucroseg 7.416e-04
##  7:                Lactoseg 6.946e-01
##  8:    SOFTDRINKSLOWCALORIE 1.859e-03
##  9: SOFTDRINKSNOTLOWCALORIE 2.862e-05
## 10:       TEACOFFEEANDWATER 6.304e-03
```
They seem to all be significantly different between the datasets! (except calciummg, and lactose)

There is a difference of 9 years in the mean ages. The change in Age might be explained by more younger people being on anti-hypertensive meds. or hypertension being diagnosed earlier

There has been a change in the intake of total sugars sucrose, glucose and fructose. 
There has been a change in the intake of soft drinks, tea coffee and water.


```
##       name   pvalue
## 1:     Sex 0.001513
## 2: Country      NaN
```

![](bpupfandnaEng_files/figure-html/unnamed-chunk-14-1.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-14-2.png)<!-- -->
Again significant differences
Are there time differences in diagnosis of hypertension/treatment between sexes 
ie are more women now on meds compared with the number of men than previously?
There appears to be more men excluded in the 1-4 population compared to females, when this is compared to the 2017-19 population. This supports the idea of greater equality in prescribing more recently.




comparing individual data sets looking for similarity in two

```
##      name    pvalue
## 1:  htval 2.214e-04
## 2:  wtval 9.892e-08
## 3: bmival 7.962e-10
```
This table suggests that there is a significant difference between the height, weight, and bmi of the groups.
The 11 population is shorter by 4 cm and 7 kilos lighter 
The mean bmi has dropped from 25.86 which is overweight. 
It is now 23.48 which is in the normal range. 
This would also highlight a preferential detection of high BP in those overweight.



```
##        name  p.value
## 1: vegetarn 0.001157
## 2:  SaltChk      NaN
## 3:  SalHowC      NaN
## 4:  SltShow      NaN
```
These values identify a significant difference in the number of vegetarians


```
##       name p.value
## 1: ethgrp5 0.01317
## 2: ethgrp2 0.01597
## 3:  nssec8     NaN
## 4:     GOR     NaN
## 5:  region     NaN
```
There are differences in ethnicity and regional makeup


```
##        name p.value
## 1:   hyper1     NaN
## 2: hyper140     NaN
## 3:  highbp1 0.00000
## 4:  hibp140     NaN
## 5:  agegad1 0.01671
## 6:  agegad2 0.03427
## 7:  agegch1 0.00162
## 8:   agegr1     NaN
```
The age groups show some discrepency 




## Statistical Comparison of key variables
### comparing Na intake calculated from diet



So has there been a change in intake? test 
A t test is comparing the means of the two samples.
This first compares the means of sodium in years 1-4 with sodium in years 9-11.
The second compares the means of Total energy intake in Joules over the same periods.



```
##     Var statistic   p.value
## 1:   Na     -5.51 4.528e-08
## 2: TEMJ     -1.48 1.391e-01
```
It seems that the EMJ intake change is not statistically significantat the level of p = 0.05. 
The sodium intake change is statistically significant with a p value less than 0.05.


### what about outcome  BP?
The next t tests compare mean systolic values in the two time periods and then the mean diastolic values.


```
##    Var statistic   p.value
## 1: Sys    -6.286 4.782e-10
## 2: Dia    -4.355 1.458e-05
```

There is a reduction in systolic, with a less significant reduction in diastolic

In summary there is a reduction in Na intake and a drop in both systolic and diastolic pressures. 
The TEMJ has also dropped but does not have statistical significance.
This cannot be described as causative, this analysis simply identifies several correlated variables.

Has another factor affected the BP change ?





###  Regression Analysis

Firstly using linear regression I will look at the correlation between omsysval and sodiummg. 
There are regressions for 1-4 and 9-11

Simple linear regression equations look for the relationship between the dependant variable, and the independant variable.

```
## 
## Call:
## lm(formula = omsysval ~ Sodiummg, data = sav4rp)
## 
## Coefficients:
## (Intercept)     Sodiummg  
##   1.188e+02    5.068e-04
```

```
## 
## Call:
## lm(formula = omsysval ~ Sodiummg, data = sav11rp)
## 
## Coefficients:
## (Intercept)     Sodiummg  
##   105.35361      0.00484
```
There is a  relationship between Na and omsysval. There is a weakly positive gradiant. This appears greater in the more recent data starting from a lower intersection with the y axis.



```
## 
## Call:
## lm(formula = omsysval ~ TotalEMJ, data = sav4rp)
## 
## Coefficients:
## (Intercept)     TotalEMJ  
##    114.9232       0.6699
```

```
## 
## Call:
## lm(formula = omsysval ~ TotalEMJ, data = sav11rp)
## 
## Coefficients:
## (Intercept)     TotalEMJ  
##     100.860        1.908
```
There is a relationship between Total EMJ and omsysval. The positive gradiant appears stronger in 9-11.

### multi variable regression 

This uses a model of variables. It can highlight the contributions of each.


```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + TotalEMJ + ethgr2 + 
##     VitaminDµg, data = sav4rp)
## 
## Coefficients:
##     (Intercept)              Age        SexFemale         Sodiummg  
##       1.070e+02        4.059e-01       -4.766e+00       -9.327e-04  
##        TotalEMJ  ethgr2Non-white       VitaminDµg  
##       4.039e-01       -3.341e+00       -2.062e-01
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + TotalEMJ + ethgrp2 + 
##     VitaminDµg, data = sav11rp)
## 
## Coefficients:
##      (Intercept)              AgeR         SexFemale          Sodiummg  
##        99.274128          0.390912         -5.125441          0.001644  
##         TotalEMJ  ethgrp2Non-white        VitaminDµg  
##         0.390728          0.097282          0.035465
```
There are differences in coefficients in the two sets of data. 
These models can be compared with others with different variables to understand how they help predict values more or less effectively.



## Conclusion

There is a significant change to the data due to excluding those on anti hypertensives.
Weighting the populations for these changes may improve the comparability? 

This makes it difficult to infer the meaning of the result of the comparison testing.

In particular there are changes to sex, age, region, ethnicity on removing those treated with anti hypertensives. This suggests there have been changes in the rate of prescribing. It also identifies that these differences have been applied differently across the groups.

Linear regression identifies a mathematical model which fits to the data. Comparing these models can identify an optimal model.

