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
---

 
# BP and UPF and Na in NDNS Dissertation calculation and results


##  Introduction to Results

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













 
The food diary data needs more processing. In particular the NOVA categorisation is not in the data set. 
I have derived UPFNOVA from a paper which had a data table identifying the NDNS sub food groups.





####  Processing the food diaries
The Nova group is attached to the foods in the food diaries.
The tables are reduced to the necessary variables.



To work out the gram weight amount of food intake by each individual, first the diary entries for each individual are totalled up.
The total gram weight value of intake of each food is then worked out as a percentage of the total intake.



All these individual calculations are then built back up into tables. 
This is done for years 9-11 and then 1-4.












The process can be done for food level energy intake also.













After that, this information is added to the other data.
This gives us the nova group information by weight and weight percent for all participants.

The data is now ready for analysis first by descriptive analysis.



###  Exclusions 
eg hypertensives and pregnant/breastfeeding
possible future set with only England?

I have excluded those who are taking diuretics, bblockers, ace inhibitors, calcium channel blockers and other bp drugs. There are no participants who are pregnant or breastfeeding. 
I have included normotensive untreated individuals. 
I have restricted the data set to England only.




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
There are also values for 24 urinary sodium which is probably a better indicator of dietary sodium for parts of the dataset, but again these are not found in both time periods.



Summary Description of the key variables of sodium intake, Total energy intake, and BP
Show the data. This is the whole dataset.



```
##       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    names
##  1: 388.60 1635.00 2032.00 2119.00 2532.00 5027.00 Sodiummg
##  2: 438.20 1425.00 1808.00 1896.00 2255.00 6854.00 Sodiummg
##  3:   0.86   13.27   23.19   28.26   39.43   91.06   pcnt_4
##  4:   1.29   12.55   21.41   26.19   35.39   86.70   pcnt_4
##  5:   9.00   40.03   52.05   51.10   61.31   92.19  Epcnt_4
##  6:   3.81   37.55   48.30   48.18   57.96   95.61  Epcnt_4
##  7:  77.50  108.50  119.50  119.80  130.00  159.00 omsysval
##  8:  70.50  104.00  112.50  114.50  123.00  159.00 omsysval
##  9:  39.00   63.50   70.50   70.42   78.50   93.50 omdiaval
## 10:  41.00   60.00   67.50   67.82   75.00   94.00 omdiaval
```

![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-1.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-2.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-3.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-4.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-10-5.png)<!-- -->

I have used the square root of the percentage as this reduces the skew of the data leading to a closer approximation to the normal distribution.












## Statistical Comparison of key variables
### comparing UPF and Sodium intake calculated from diet



In order to confirm there has been a change in intake 
a t.test compares the means of the two samples.
This first compares the means of sodium in years 1-4 with sodium in years 9-11.

The second compares the means of pcnt UPF intake in over the same periods.


```
##        Var statistic   p.value
## 1: Epcnt_4    -3.424 6.399e-04
## 2:  pcnt_4    -1.994 4.640e-02
## 3:      Na    -5.510 4.528e-08
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  sav11rp[, "pcnt_4"] and sav4rp[, "pcnt_4"]
## t = -1.9942, df = 1025.5, p-value = 0.0464
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -4.0885142 -0.0329815
## sample estimates:
## mean of x mean of y 
##  26.19425  28.25500
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  sav11rp[, "Epcnt_4"] and sav4rp[, "Epcnt_4"]
## t = -3.4244, df = 1052.9, p-value = 0.0006399
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -4.593561 -1.246912
## sample estimates:
## mean of x mean of y 
##  48.18030  51.10053
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  sav11rp[, "Sodiummg"] and sav4rp[, "Sodiummg"]
## t = -5.5099, df = 1036.8, p-value = 4.528e-08
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -302.1717 -143.4666
## sample estimates:
## mean of x mean of y 
##  1896.175  2118.994
```

It seems the mean percentage UPF intake changes less by 2 % and this reduction is statistically significant.
The sodium intake has changed by 5.5 mg and is also statistically significant with a p value less than 0.05.


### what about outcome  BP?
The next t tests compare mean systolic values in the two time periods and then the mean diastolic values.


```
##    Var statistic   p.value
## 1: Sys    -6.286 4.782e-10
## 2: Dia    -4.355 1.458e-05
```

There is a reduction in systolic, with a less significant reduction in diastolic

In summary there is a reduction in UPF and Na intake and a drop in both systolic and diastolic pressures. 



Has another factor affected the BP change ?




### Statistical analysis of Confounding variables

How are confounding variables distributed between the two datasets
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
##    name   pvalue
## 1:  Sex 0.001513
```

![](bpupfandnaEng_files/figure-html/unnamed-chunk-16-1.png)<!-- -->![](bpupfandnaEng_files/figure-html/unnamed-chunk-16-2.png)<!-- -->
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
```
These values identify a significant difference in the number of vegetarians


```
##       name p.value
## 1: ethgrp5 0.01317
## 2: ethgrp2 0.01597
```

```
##                  name p.value
## 1: EIMD_2007_quintile 0.05195
## 2: EIMD_2010_quintile 0.08485
## 3: EIMD_2015_quintile 0.21530
```

```
##       name   p.value
## 1: educfin 1.968e-21
```
There are differences in ethnicity.
The differences in qimd, using the 2010 definitions, are not statistically significant.


```
##       name p.value
## 1: agegad1 0.01671
## 2: agegad2 0.03427
## 3: agegch1 0.00162
```
The age groups show some discrepancy with the p value significant only in the child agre groups.









##  Regression Analysis
###  linear regression

Firstly using linear regression I will look at the correlation between omsysval and sodiummg. 
There are regressions for 1-4 and 9-11

Simple linear regression equations look for the relationship between the dependant variable, and the independant variable.


```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex, data = sav4rp)
## 
## Coefficients:
## (Intercept)          Age    SexFemale  
##    106.9945       0.4095      -4.9186
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex, data = sav11rp)
## 
## Coefficients:
## (Intercept)         AgeR    SexFemale  
##    105.4956       0.4058      -6.3054
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## Age         1  43084   43084 312.934 < 2.2e-16 ***
## Sex         1   2798    2798  20.323 8.146e-06 ***
## Residuals 503  69251     138                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3932.958
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## AgeR        1  59814   59814 462.772 < 2.2e-16 ***
## Sex         1   7891    7891  61.054 1.732e-14 ***
## Residuals 806 104177     129                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6234.003
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Age + Sex
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Age ':
##   Coef. estimate: 0.40948 
##   Standard Error: 0.02307 
##   t-value: 17.75218 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.38519 
##   Robustness Value, q = 1 : 0.53801 
##   Robustness Value, q = 1 alpha = 0.05 : 0.49846 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ AgeR + Sex
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' AgeR ':
##   Coef. estimate: 0.40578 
##   Standard Error: 0.0184 
##   t-value: 22.05399 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.37634 
##   Robustness Value, q = 1 : 0.53163 
##   Robustness Value, q = 1 alpha = 0.05 : 0.50025 
## 
## For more information, check summary.
```




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

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value Pr(>F)
## Sodiummg    1     68  68.234  0.2989 0.5848
## Residuals 504 115064 228.302
```

```
## [1] 4187.881
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## Sodiummg    1   9120  9120.2  45.219 3.333e-11 ***
## Residuals 807 162762   201.7                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6592.979
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Sodiummg
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Sodiummg ':
##   Coef. estimate: 0.00051 
##   Standard Error: 0.00093 
##   t-value: 0.54669 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.00059 
##   Robustness Value, q = 1 : 0.02406 
##   Robustness Value, q = 1 alpha = 0.05 : 0 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Sodiummg
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Sodiummg ':
##   Coef. estimate: 0.00484 
##   Standard Error: 0.00072 
##   t-value: 6.72453 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.05306 
##   Robustness Value, q = 1 : 0.21035 
##   Robustness Value, q = 1 alpha = 0.05 : 0.15412 
## 
## For more information, check summary.
```
There is a  relationship between Na and omsysval. There is a weakly positive gradiant. This appears greater in the more recent data starting from a lower intersection with the y axis.



```
## 
## Call:
## lm(formula = omsysval ~ sqrt(pcnt_4), data = sav4rp)
## 
## Coefficients:
##  (Intercept)  sqrt(pcnt_4)  
##      134.805        -2.973
```

```
## 
## Call:
## lm(formula = omsysval ~ sqrt(pcnt_4), data = sav11rp)
## 
## Coefficients:
##  (Intercept)  sqrt(pcnt_4)  
##      124.616        -2.084
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##               Df Sum Sq Mean Sq F value    Pr(>F)    
## sqrt(pcnt_4)   1  13072 13071.8  64.552 6.714e-15 ***
## Residuals    504 102061   202.5                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 4127.2
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##               Df Sum Sq Mean Sq F value    Pr(>F)    
## sqrt(pcnt_4)   1   9760  9760.2  48.584 6.581e-12 ***
## Residuals    807 162122   200.9                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6589.791
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ sqrt(pcnt_4)
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' sqrt(pcnt_4) ':
##   Coef. estimate: -2.97323 
##   Standard Error: 0.37006 
##   t-value: -8.0344 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.11354 
##   Robustness Value, q = 1 : 0.29953 
##   Robustness Value, q = 1 alpha = 0.05 : 0.23621 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ sqrt(pcnt_4)
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' sqrt(pcnt_4) ':
##   Coef. estimate: -2.08412 
##   Standard Error: 0.299 
##   t-value: -6.9702 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.05678 
##   Robustness Value, q = 1 : 0.2171 
##   Robustness Value, q = 1 alpha = 0.05 : 0.16138 
## 
## For more information, check summary.
```


```
## 
## Call:
## lm(formula = omsysval ~ Epcnt_4, data = sav4rp)
## 
## Coefficients:
## (Intercept)      Epcnt_4  
##    133.1397      -0.2603
```

```
## 
## Call:
## lm(formula = omsysval ~ Epcnt_4, data = sav11rp)
## 
## Coefficients:
## (Intercept)      Epcnt_4  
##    123.3419      -0.1829
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## Epcnt_4     1   7885  7885.2  37.056 2.276e-09 ***
## Residuals 504 107247   212.8                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 4152.282
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## Epcnt_4     1   5940  5939.9  28.887 1.005e-07 ***
## Residuals 807 165943   205.6                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6608.634
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Epcnt_4
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Epcnt_4 ':
##   Coef. estimate: -0.26027 
##   Standard Error: 0.04276 
##   t-value: -6.08734 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.06849 
##   Robustness Value, q = 1 : 0.23687 
##   Robustness Value, q = 1 alpha = 0.05 : 0.16748 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Epcnt_4
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Epcnt_4 ':
##   Coef. estimate: -0.18289 
##   Standard Error: 0.03403 
##   t-value: -5.37463 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.03456 
##   Robustness Value, q = 1 : 0.17214 
##   Robustness Value, q = 1 alpha = 0.05 : 0.11306 
## 
## For more information, check summary.
```


There is a relationship between Na and g pcnt as well as E pcnt and omsysval with a negative gradiant.

### multi variable regression 

This uses a model of variables. It can highlight the contributions of each.


```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + sqrt(pcnt_4) + 
##     ethgr2 + VitaminDµg + EducFin + EIMD_2010_quintile, data = sav4rp, 
##     na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                  Age            SexFemale  
##          116.029448             0.386573            -6.903808  
##            Sodiummg         sqrt(pcnt_4)      ethgr2Non-white  
##           -0.001096            -0.035378            -5.177046  
##          VitaminDµg             EducFin3             EducFin4  
##           -0.007994            -5.738639            -3.845221  
##            EducFin5             EducFin6             EducFin7  
##           -4.287668            -4.881260            -2.032417  
##            EducFin8  EIMD_2010_quintile2  EIMD_2010_quintile3  
##           -5.375936            -0.617806             0.687538  
## EIMD_2010_quintile4  EIMD_2010_quintile5  
##            0.014237             3.321154
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + sqrt(pcnt_4) + 
##     ethgrp2 + VitaminDµg + educfinh + EIMD_2010_quintile, data = sav11rp, 
##     na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                 AgeR            SexFemale  
##           99.516146             0.396642            -5.179271  
##            Sodiummg         sqrt(pcnt_4)     ethgrp2Non-white  
##            0.002222             0.263583             0.703924  
##          VitaminDµg            educfinh2            educfinh3  
##            0.155445            -0.348581             1.252899  
##           educfinh4            educfinh5            educfinh6  
##            1.144184            -0.455836             1.882924  
##           educfinh7            educfinh8  EIMD_2010_quintile2  
##           -0.761727            -0.675437             0.863915  
## EIMD_2010_quintile3  EIMD_2010_quintile4  EIMD_2010_quintile5  
##           -0.660497            -0.452698            -0.259395
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age                  1  18402 18401.5 129.7164 < 2.2e-16 ***
## Sex                  1   3113  3112.7  21.9423 3.946e-06 ***
## Sodiummg             1    297   297.2   2.0954   0.14859    
## sqrt(pcnt_4)         1     19    18.7   0.1317   0.71687    
## ethgr2               1    725   724.8   5.1096   0.02437 *  
## VitaminDµg           1      0     0.1   0.0005   0.98201    
## EducFin              6    754   125.7   0.8863   0.50488    
## EIMD_2010_quintile   4    623   155.8   1.0985   0.35704    
## Residuals          372  52772   141.9                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3049.984
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR                 1  59445   59445 466.1614 < 2.2e-16 ***
## Sex                  1   7493    7493  58.7580  5.31e-14 ***
## Sodiummg             1   1908    1908  14.9585 0.0001191 ***
## sqrt(pcnt_4)         1    109     109   0.8532 0.3559427    
## ethgrp2              1     14      14   0.1124 0.7375684    
## VitaminDµg           1     71      71   0.5531 0.4572883    
## educfinh             7    447      64   0.5005 0.8344781    
## EIMD_2010_quintile   4    225      56   0.4415 0.7786305    
## Residuals          779  99338     128                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6145.655
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Age + Sex + Sodiummg + sqrt(pcnt_4) + ethgr2 + VitaminDµg + 
##     EducFin + EIMD_2010_quintile
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Age ':
##   Coef. estimate: 0.38657 
##   Standard Error: 0.0491 
##   t-value: 7.87303 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.14283 
##   Robustness Value, q = 1 : 0.3333 
##   Robustness Value, q = 1 alpha = 0.05 : 0.26282 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ AgeR + Sex + Sodiummg + sqrt(pcnt_4) + ethgrp2 + VitaminDµg + 
##     educfinh + EIMD_2010_quintile
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' AgeR ':
##   Coef. estimate: 0.39664 
##   Standard Error: 0.02326 
##   t-value: 17.05406 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.27185 
##   Robustness Value, q = 1 : 0.45223 
##   Robustness Value, q = 1 alpha = 0.05 : 0.4139 
## 
## For more information, check summary.
```
There are differences in coefficients in the two sets of data. 
These models can be compared with others with different variables to understand how they help predict values more or less effectively.



```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + Epcnt_4 + ethgr2 + 
##     VitaminDµg + EducFin + EIMD_2010_quintile, data = sav4rp, 
##     na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                  Age            SexFemale  
##          117.155845             0.381119            -6.887829  
##            Sodiummg              Epcnt_4      ethgr2Non-white  
##           -0.001043            -0.022822            -5.252508  
##          VitaminDµg             EducFin3             EducFin4  
##           -0.023298            -5.770574            -3.792276  
##            EducFin5             EducFin6             EducFin7  
##           -4.262103            -4.937232            -2.023954  
##            EducFin8  EIMD_2010_quintile2  EIMD_2010_quintile3  
##           -5.425165            -0.630593             0.686627  
## EIMD_2010_quintile4  EIMD_2010_quintile5  
##            0.018051             3.381384
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + Epcnt_4 + ethgrp2 + 
##     VitaminDµg + educfinh + EIMD_2010_quintile, data = sav11rp, 
##     na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                 AgeR            SexFemale  
##           98.158987             0.401642            -5.187864  
##            Sodiummg              Epcnt_4     ethgrp2Non-white  
##            0.002157             0.052000             0.813904  
##          VitaminDµg            educfinh2            educfinh3  
##            0.199005            -0.316968             1.081674  
##           educfinh4            educfinh5            educfinh6  
##            0.925229            -0.528011             1.806677  
##           educfinh7            educfinh8  EIMD_2010_quintile2  
##           -0.778792            -0.652086             0.902891  
## EIMD_2010_quintile3  EIMD_2010_quintile4  EIMD_2010_quintile5  
##           -0.707040            -0.420598            -0.264361
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age                  1  18402 18401.5 129.7950 < 2.2e-16 ***
## Sex                  1   3113  3112.7  21.9556  3.92e-06 ***
## Sodiummg             1    297   297.2   2.0966    0.1485    
## Epcnt_4              1      2     2.5   0.0175    0.8949    
## ethgr2               1    727   727.2   5.1291    0.0241 *  
## VitaminDµg           1      0     0.5   0.0032    0.9551    
## EducFin              6    779   129.9   0.9161    0.4832    
## EIMD_2010_quintile   4    644   161.0   1.1355    0.3394    
## Residuals          372  52740   141.8                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3049.748
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR                 1  59445   59445 467.2611 < 2.2e-16 ***
## Sex                  1   7493    7493  58.8966 4.974e-14 ***
## Sodiummg             1   1908    1908  14.9938 0.0001169 ***
## Epcnt_4              1    319     319   2.5039 0.1139731    
## ethgrp2              1     25      25   0.1974 0.6569215    
## VitaminDµg           1    115     115   0.9030 0.3422605    
## educfinh             7    399      57   0.4478 0.8719221    
## EIMD_2010_quintile   4    242      61   0.4758 0.7535300    
## Residuals          779  99104     127                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6143.777
```






```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + sqrt(pcnt_4), 
##     data = sav4rp, na.action = na.exclude)
## 
## Coefficients:
##  (Intercept)           Age     SexFemale      Sodiummg  sqrt(pcnt_4)  
##    1.063e+02     4.178e-01    -4.999e+00    -2.502e-04     1.932e-01
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + sqrt(pcnt_4), 
##     data = sav11rp, na.action = na.exclude)
## 
## Coefficients:
##  (Intercept)          AgeR     SexFemale      Sodiummg  sqrt(pcnt_4)  
##    99.148456      0.405971     -5.331584      0.002373      0.268439
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##               Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age            1  43084   43084 311.8673 < 2.2e-16 ***
## Sex            1   2798    2798  20.2536 8.442e-06 ***
## Sodiummg       1      6       6   0.0408    0.8401    
## sqrt(pcnt_4)   1     34      34   0.2441    0.6215    
## Residuals    501  69212     138                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3936.67
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##               Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR           1  59814   59814 471.9889 < 2.2e-16 ***
## Sex            1   7891    7891  62.2698 9.784e-15 ***
## Sodiummg       1   2170    2170  17.1257 3.868e-05 ***
## sqrt(pcnt_4)   1    117     117   0.9265    0.3361    
## Residuals    804 101889     127                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6220.04
```


```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + Epcnt_4, data = sav4rp, 
##     na.action = na.exclude)
## 
## Coefficients:
## (Intercept)          Age    SexFemale     Sodiummg      Epcnt_4  
##   1.062e+02    4.158e-01   -5.033e+00   -2.339e-04    2.150e-02
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + Epcnt_4, data = sav11rp, 
##     na.action = na.exclude)
## 
## Coefficients:
## (Intercept)         AgeR    SexFemale     Sodiummg      Epcnt_4  
##   97.988573     0.410104    -5.344084     0.002347     0.049585
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age         1  43084   43084 311.9012 < 2.2e-16 ***
## Sex         1   2798    2798  20.2558 8.432e-06 ***
## Sodiummg    1      6       6   0.0408    0.8401    
## Epcnt_4     1     41      41   0.2985    0.5851    
## Residuals 501  69204     138                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3936.615
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR        1  59814   59814 473.0796 < 2.2e-16 ***
## Sex         1   7891    7891  62.4137 9.143e-15 ***
## Sodiummg    1   2170    2170  17.1653 3.789e-05 ***
## Epcnt_4     1    352     352   2.7867   0.09544 .  
## Residuals 804 101654     126                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3936.615
```



```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + sqrt(pcnt_4), data = sav4rp)
## 
## Coefficients:
##  (Intercept)           Age     SexFemale  sqrt(pcnt_4)  
##     105.8675        0.4167       -4.8795        0.1628
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + sqrt(pcnt_4), data = sav11rp)
## 
## Coefficients:
##  (Intercept)          AgeR     SexFemale  sqrt(pcnt_4)  
##     102.7427        0.4226       -6.1822        0.4473
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##               Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age            1  43084   43084 312.4272 < 2.2e-16 ***
## Sex            1   2798    2798  20.2899 8.285e-06 ***
## sqrt(pcnt_4)   1     25      25   0.1848    0.6675    
## Residuals    502  69226     138                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3934.772
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##               Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR           1  59814   59814 463.6888 < 2.2e-16 ***
## Sex            1   7891    7891  61.1748 1.638e-14 ***
## sqrt(pcnt_4)   1    335     335   2.5961    0.1075    
## Residuals    805 103842     129                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6233.398
```


```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Epcnt_4, data = sav4rp)
## 
## Coefficients:
## (Intercept)          Age    SexFemale      Epcnt_4  
##    105.7763       0.4154      -4.9155       0.0193
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Epcnt_4, data = sav11rp)
## 
## Coefficients:
## (Intercept)         AgeR    SexFemale      Epcnt_4  
##   101.81393      0.42392     -6.21332      0.06371
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age         1  43084   43084 312.4675 < 2.2e-16 ***
## Sex         1   2798    2798  20.2925 8.274e-06 ***
## Epcnt_4     1     34      34   0.2496    0.6176    
## Residuals 502  69217     138                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3934.706
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR        1  59814   59814 464.8328 < 2.2e-16 ***
## Sex         1   7891    7891  61.3257 1.525e-14 ***
## Epcnt_4     1    590     590   4.5886   0.03248 *  
## Residuals 805 103587     129                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6231.405
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Age + Sex + Epcnt_4
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Epcnt_4 ':
##   Coef. estimate: 0.0193 
##   Standard Error: 0.03863 
##   t-value: 0.49957 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 5e-04 
##   Robustness Value, q = 1 : 0.02205 
##   Robustness Value, q = 1 alpha = 0.05 : 0 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ AgeR + Sex + Epcnt_4
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Epcnt_4 ':
##   Coef. estimate: 0.06371 
##   Standard Error: 0.02974 
##   t-value: 2.14211 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.00567 
##   Robustness Value, q = 1 : 0.0727 
##   Robustness Value, q = 1 alpha = 0.05 : 0.00625 
## 
## For more information, check summary.
```



```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg, data = sav4rp)
## 
## Coefficients:
## (Intercept)          Age    SexFemale     Sodiummg  
##   1.074e+02    4.093e-01   -4.997e+00   -1.545e-04
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg, data = sav11rp)
## 
## Coefficients:
## (Intercept)         AgeR    SexFemale     Sodiummg  
##  100.612696     0.395475    -5.369487     0.002469
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age         1  43084   43084 312.3376 < 2.2e-16 ***
## Sex         1   2798    2798  20.2841  8.31e-06 ***
## Sodiummg    1      6       6   0.0408    0.8399    
## Residuals 502  69245     138                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 3934.917
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## AgeR        1  59814   59814 472.032 < 2.2e-16 ***
## Sex         1   7891    7891  62.276 9.744e-15 ***
## Sodiummg    1   2170    2170  17.127 3.864e-05 ***
## Residuals 805 102007     127                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## [1] 6218.971
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Age + Sex + Sodiummg
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Sodiummg ':
##   Coef. estimate: -0.00015 
##   Standard Error: 0.00076 
##   t-value: -0.20207 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 8e-05 
##   Robustness Value, q = 1 : 0.00898 
##   Robustness Value, q = 1 alpha = 0.05 : 0 
## 
## For more information, check summary.
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ AgeR + Sex + Sodiummg
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## 
## Unadjusted Estimates of ' Sodiummg ':
##   Coef. estimate: 0.00247 
##   Standard Error: 6e-04 
##   t-value: 4.13851 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.02083 
##   Robustness Value, q = 1 : 0.13561 
##   Robustness Value, q = 1 alpha = 0.05 : 0.07376 
## 
## For more information, check summary.
```



## This final set analyses the whole dataset together across teh key variables

```r
sav11rp$Age <- sav11rp[,AgeR]
#sav11rp[, seriali := factor(seriali)]
lastfew11 <- sav11rp[,.(seriali,Age, Sex,Sodiummg,pcnt_4, omsysval, omdiaval,Epcnt_4)]
lastfew4 <- sav4rp[,.(seriali,Age, Sex,Sodiummg,pcnt_4, omsysval, omdiaval,Epcnt_4)]
alldata <- data.table(rbind(lastfew4,lastfew11))
ZCNova <- data.table(read_excel("data/NOVA_ForDavid.xlsx"))
setkey(ZCNova, "seriali")
setkey(alldata, "seriali")
alldata <- alldata[ZCNova, on = "seriali"]

lmallg <- lm(omsysval~ Age+ Sex + Sodiummg +pcnt_4, alldata)
lmallg
```

```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + pcnt_4, data = alldata)
## 
## Coefficients:
## (Intercept)          Age    SexFemale     Sodiummg       pcnt_4  
##  101.380994     0.422131    -4.941951     0.001513     0.027098
```

```r
anova(lmallg)
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##             Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age          1 110416  110416 833.4596 < 2.2e-16 ***
## Sex          1   9952    9952  75.1200 < 2.2e-16 ***
## Sodiummg     1   1649    1649  12.4464 0.0004333 ***
## pcnt_4       1    226     226   1.7096 0.1912666    
## Residuals 1310 173548     132                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
lmallE <- lm(omsysval~ Age+ Sex + Sodiummg +Epcnt_4, alldata)
lmallE
```

```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + Epcnt_4, data = alldata)
## 
## Coefficients:
## (Intercept)          Age    SexFemale     Sodiummg      Epcnt_4  
##   99.725666     0.424986    -4.990186     0.001467     0.048844
```

```r
anova(lmallE)
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##             Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age          1 110416  110416 835.1174 < 2.2e-16 ***
## Sex          1   9952    9952  75.2694 < 2.2e-16 ***
## Sodiummg     1   1649    1649  12.4712 0.0004276 ***
## Epcnt_4      1    571     571   4.3186 0.0378915 *  
## Residuals 1310 173203     132                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
AIC(lmallE)
```

```
## [1] 10161.84
```

```r
lmallgz <- lm(omsysval~ Age+ Sex + Sodiummg +NOVA_Gpct_opti_4, alldata)
lmallgz
```

```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + NOVA_Gpct_opti_4, 
##     data = alldata)
## 
## Coefficients:
##      (Intercept)               Age         SexFemale          Sodiummg  
##       101.749325          0.416830         -4.944525          0.001576  
## NOVA_Gpct_opti_4  
##         0.013342
```

```r
anova(lmallgz)
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                    Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age                 1 110416  110416 832.6699 < 2.2e-16 ***
## Sex                 1   9952    9952  75.0488 < 2.2e-16 ***
## Sodiummg            1   1649    1649  12.4346  0.000436 ***
## NOVA_Gpct_opti_4    1     62      62   0.4667  0.494610    
## Residuals        1310 173712     133                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
lmallEz <- lm(omsysval~ Age+ Sex + Sodiummg +NOVA_Epct_opti_4, alldata)
lmallEz
```

```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + NOVA_Epct_opti_4, 
##     data = alldata)
## 
## Coefficients:
##      (Intercept)               Age         SexFemale          Sodiummg  
##       100.526240          0.419566         -4.950944          0.001532  
## NOVA_Epct_opti_4  
##         0.028662
```

```r
anova(lmallEz)
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                    Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age                 1 110416  110416 833.4286 < 2.2e-16 ***
## Sex                 1   9952    9952  75.1172 < 2.2e-16 ***
## Sodiummg            1   1649    1649  12.4459 0.0004334 ***
## NOVA_Epct_opti_4    1    220     220   1.6608 0.1977252    
## Residuals        1310 173554     132                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
AIC(lmallEz)
```

```
## [1] 10164.5
```

```r
SmallE <- sensemakr(lmallE, treatment = "Epcnt_4")
Smallg <- sensemakr(lmallg, treatment = "pcnt_4")
summary(SmallE)
```

```
## Sensitivity Analysis to Unobserved Confounding
## 
## Model Formula: omsysval ~ Age + Sex + Sodiummg + Epcnt_4
## 
## Null hypothesis: q = 1 and reduce = TRUE 
## -- This means we are considering biases that reduce the absolute value of the current estimate.
## -- The null hypothesis deemed problematic is H0:tau = 0 
## 
## Unadjusted Estimates of 'Epcnt_4': 
##   Coef. estimate: 0.0488 
##   Standard Error: 0.0235 
##   t-value (H0:tau = 0): 2.0781 
## 
## Sensitivity Statistics:
##   Partial R2 of treatment with outcome: 0.0033 
##   Robustness Value, q = 1: 0.0558 
##   Robustness Value, q = 1, alpha = 0.05: 0.0032 
## 
## Verbal interpretation of sensitivity statistics:
## 
## -- Partial R2 of the treatment with the outcome: an extreme confounder (orthogonal to the covariates) that explains 100% of the residual variance of the outcome, would need to explain at least 0.33% of the residual variance of the treatment to fully account for the observed estimated effect.
## 
## -- Robustness Value, q = 1: unobserved confounders (orthogonal to the covariates) that explain more than 5.58% of the residual variance of both the treatment and the outcome are strong enough to bring the point estimate to 0 (a bias of 100% of the original estimate). Conversely, unobserved confounders that do not explain more than 5.58% of the residual variance of both the treatment and the outcome are not strong enough to bring the point estimate to 0.
## 
## -- Robustness Value, q = 1, alpha = 0.05: unobserved confounders (orthogonal to the covariates) that explain more than 0.32% of the residual variance of both the treatment and the outcome are strong enough to bring the estimate to a range where it is no longer 'statistically different' from 0 (a bias of 100% of the original estimate), at the significance level of alpha = 0.05. Conversely, unobserved confounders that do not explain more than 0.32% of the residual variance of both the treatment and the outcome are not strong enough to bring the estimate to a range where it is no longer 'statistically different' from 0, at the significance level of alpha = 0.05.
```






## Summary

The data from 2008-11 and 2017-19 NDNS datasets have been downloaded and adapted into a form to approach the research question.

The key variables of BP, 'omsysval' and 'omdiaval' are taken directly from the data.
The percentage by weight of UPF intake is calculated.
The percentage by energy of UPF intake is also calculated.
The diary entries are identified by NOVA type. 
The total weight of each nova type is calculated for each individual. 
The percentage of the total weight food intake per person is then calculated. 
This gives the derived value 'pcnt_4', which is the percentage of intake which is NOVA 4 or UPF.
The total energy in kJ of each nova type is calculated for each individual. 
The percentage of the total energy food intake per person is then calculated. 
This gives the derived value 'Epcnt_4', which is the percentage of intake which is NOVA 4 or UPF.

There is a table with summary values for theses variables across the dataset.

Statistical analysis of the key variables shows that there is a reduction in all the variables between the two time periods. 

Confounding variables are analysed and show that there has been a significant change in the sex balance of the populations. 
Removing those with antihypertensive medications has removed more men in the earlier cohort compared to women. 

Regression shows a degree of association between the BP and UPF intake by weight and by energy.
It also shows the same for sodium intake.

Using Anova analysis of different multi variable regression models 
 the key variables are significant for sodium in several models, and sometimes for energy percentage. 
Sodium intake shows the strongest association in the latter 9-11 cohort.






## Conclusion

The percentage by weight of NOVA group 4 foods has decreased from 2008 to 2019.
The percentage by energy of NOVA group 4 foods has decreased from 2008 to 2019.
The mean sodium intake in mg has reduced between the two time periods. 
The systolic and diastolic BP have reduced between the two time periods.

In each period there is a correlation between systolic BP and sodium intake. 
In each period there is a correlation between systolic BP and UPF intake. 

The regression models identify that age and sex are statistically significant contributors to the BP.
Only those models from the later time period show sodium as being statistically significant in importance.
Combining the data shows the energy percentage of UPF as being a statistically significant contributor.

