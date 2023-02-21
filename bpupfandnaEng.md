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











```
##        seriali EnergykJ_1 EnergykJ_2 EnergykJ_3 EnergykJ_4 Epcnt_1 Epcnt_2
##    1: 10101032     382.58      62.83         NA   23112.92    1.15    0.19
##    2: 10101042     664.25     406.56         NA    5638.87    4.39    2.69
##    3: 10101111     386.06         NA    2540.00   22091.13    1.03      NA
##    4: 10101151     781.24     103.30    5903.45   18658.93    1.95    0.26
##    5: 10101161    2334.30         NA         NA   12268.45    8.31      NA
##   ---                                                                     
## 6824: 90305032    7968.24         NA    1760.56    4129.01   44.78      NA
## 6825: 90305071    2505.40     351.12    1192.75   12849.41    7.59    1.06
## 6826: 90305072     880.98     203.28      20.94   12425.21    4.17    0.96
## 6827: 90305251    1552.40         NA     668.40   15331.27    4.99      NA
## 6828: 90305261         NA         NA    3895.72   17703.85      NA      NA
##       Epcnt_3 Epcnt_4
##    1:      NA   69.55
##    2:      NA   37.28
##    3:    6.78   58.97
##    4:   14.76   46.64
##    5:      NA   43.69
##   ---                
## 6824:    9.89   23.20
## 6825:    3.62   38.95
## 6826:    0.10   58.86
## 6827:    2.15   49.24
## 6828:   10.25   46.56
```


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
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## Sodiummg    1   9120  9120.2  45.219 3.333e-11 ***
## Residuals 807 162762   201.7                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
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
## Analysis of Variance Table
## 
## Response: omsysval
##            Df Sum Sq Mean Sq F value    Pr(>F)    
## Epcnt_4     1   5940  5939.9  28.887 1.005e-07 ***
## Residuals 807 165943   205.6                      
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```


There is a relationship between Na and g pcnt as well as E pcnt and omsysval with a negative gradiant.

### multi variable regression 

This uses a model of variables. It can highlight the contributions of each.


```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + sqrt(pcnt_4) + 
##     ethgr2 + VitaminDµg + EIMD_2010_quintile, data = sav4rp, 
##     na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                  Age            SexFemale  
##           1.067e+02            4.194e-01           -5.165e+00  
##            Sodiummg         sqrt(pcnt_4)      ethgr2Non-white  
##          -2.385e-04            8.201e-02           -3.497e+00  
##          VitaminDµg  EIMD_2010_quintile2  EIMD_2010_quintile3  
##          -1.184e-01           -2.763e-01            1.390e+00  
## EIMD_2010_quintile4  EIMD_2010_quintile5  
##           1.526e-01            2.991e+00
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + sqrt(pcnt_4) + 
##     ethgrp2 + VitaminDµg + EIMD_2010_quintile, data = sav11rp, 
##     na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                 AgeR            SexFemale  
##           98.389634             0.406170            -5.225006  
##            Sodiummg         sqrt(pcnt_4)     ethgrp2Non-white  
##            0.002219             0.357144             0.480169  
##          VitaminDµg  EIMD_2010_quintile2  EIMD_2010_quintile3  
##            0.139146             0.996419            -0.461348  
## EIMD_2010_quintile4  EIMD_2010_quintile5  
##           -0.184625            -0.071050
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age                  1  43146   43146 314.4100 < 2.2e-16 ***
## Sex                  1   2840    2840  20.6940 6.789e-06 ***
## Sodiummg             1      4       4   0.0270   0.86953    
## sqrt(pcnt_4)         1     42      42   0.3076   0.57939    
## ethgr2               1    481     481   3.5020   0.06189 .  
## VitaminDµg           1     49      49   0.3564   0.55079    
## EIMD_2010_quintile   4    723     181   1.3170   0.26254    
## Residuals          494  67790     137                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR                 1  59384   59384 465.7071 < 2.2e-16 ***
## Sex                  1   7621    7621  59.7702 3.239e-14 ***
## Sodiummg             1   2098    2098  16.4566 5.471e-05 ***
## sqrt(pcnt_4)         1    134     134   1.0539    0.3049    
## ethgrp2              1     14      14   0.1109    0.7392    
## VitaminDµg           1     56      56   0.4370    0.5088    
## EIMD_2010_quintile   4    205      51   0.4011    0.8079    
## Residuals          791 100863     128                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```
There are differences in coefficients in the two sets of data. 
These models can be compared with others with different variables to understand how they help predict values more or less effectively.



```
## 
## Call:
## lm(formula = omsysval ~ Age + Sex + Sodiummg + Epcnt_4 + ethgr2 + 
##     VitaminDµg + EIMD_2010_quintile, data = sav4rp, na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                  Age            SexFemale  
##           1.068e+02            4.179e-01           -5.175e+00  
##            Sodiummg              Epcnt_4      ethgr2Non-white  
##          -2.248e-04            7.018e-03           -3.497e+00  
##          VitaminDµg  EIMD_2010_quintile2  EIMD_2010_quintile3  
##          -1.174e-01           -2.650e-01            1.388e+00  
## EIMD_2010_quintile4  EIMD_2010_quintile5  
##           1.490e-01            2.993e+00
```

```
## 
## Call:
## lm(formula = omsysval ~ AgeR + Sex + Sodiummg + Epcnt_4 + ethgrp2 + 
##     VitaminDµg + EIMD_2010_quintile, data = sav11rp, na.action = na.exclude)
## 
## Coefficients:
##         (Intercept)                 AgeR            SexFemale  
##           96.991698             0.409765            -5.233236  
##            Sodiummg              Epcnt_4     ethgrp2Non-white  
##            0.002165             0.061819             0.635127  
##          VitaminDµg  EIMD_2010_quintile2  EIMD_2010_quintile3  
##            0.187439             1.028459            -0.555535  
## EIMD_2010_quintile4  EIMD_2010_quintile5  
##           -0.176340            -0.091850
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## Age                  1  43146   43146 314.4021 < 2.2e-16 ***
## Sex                  1   2840    2840  20.6935  6.79e-06 ***
## Sodiummg             1      4       4   0.0270    0.8695    
## Epcnt_4              1     51      51   0.3715    0.5425    
## ethgr2               1    476     476   3.4721    0.0630 .  
## VitaminDµg           1     46      46   0.3342    0.5634    
## EIMD_2010_quintile   4    720     180   1.3109    0.2649    
## Residuals          494  67792     137                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```
## Analysis of Variance Table
## 
## Response: omsysval
##                     Df Sum Sq Mean Sq  F value    Pr(>F)    
## AgeR                 1  59384   59384 467.1118 < 2.2e-16 ***
## Sex                  1   7621    7621  59.9505 2.975e-14 ***
## Sodiummg             1   2098    2098  16.5062 5.333e-05 ***
## Epcnt_4              1    360     360   2.8305   0.09289 .  
## ethgrp2              1     26      26   0.2016   0.65359    
## VitaminDµg           1     97      97   0.7595   0.38373    
## EIMD_2010_quintile   4    230      58   0.4526   0.77057    
## Residuals          791 100559     127                       
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
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



## This final set analyses the whole dataset together across teh key variables

```r
sav11rp$Age <- sav11rp[,AgeR]
lastfew11 <- sav11rp[,.(Age, Sex,Sodiummg,pcnt_4, omsysval, omdiaval,Epcnt_4)]
lastfew4 <- sav4rp[,.(Age, Sex,Sodiummg,pcnt_4, omsysval, omdiaval,Epcnt_4)]
alldata <- data.table(rbind(lastfew4,lastfew11))

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

