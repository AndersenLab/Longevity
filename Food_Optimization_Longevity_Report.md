---
title: "Analysis of Longevity"
author: "Ryan Abdella"
date: "January 15, 2015"
output:
  html_document:
    css: ~/Github/Food-Optimization/Scripts/Food_Optimization/Scripts/foghorn_edited.css
---



```
## [1] "p03_4mgmL"
```
 
## Raw Activity ##



![plot of chunk Raw](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Raw-1.png) 

## Cleaned Data ##



![plot of chunk Cleaned](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Cleaned-1.png) 

## Temperature Normalized ##




```
## Error in `$<-.data.frame`(`*tmp*`, "temp", value = c(25, 25.1, 25.4, 24.3, : replacement has 864 rows, data has 1152
```

## Well Mean Data ##

![plot of chunk Well_Mean](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Mean-1.png) 

## Well Median Data ##

![plot of chunk Well_Median](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Median-1.png) 

## Well Total Data ##

![plot of chunk Well_Total](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Total-1.png) 

## Well Normalized Data ##



![plot of chunk Well_Normalized](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Normalized-1.png) 

## Well Curve Fitting ##


```
##     strain row      bparam       cparam
## 1   CB4856   A  0.00000000 0.000000e+00
## 2   CB4856   B  0.00000000 0.000000e+00
## 3   CB4856   C  0.00000000 0.000000e+00
## 4   CB4856   D  0.00000000 0.000000e+00
## 5   CB4856   E  0.00000000 0.000000e+00
## 6   CB4856   F  0.00000000 0.000000e+00
## 7   CB4856   G  0.00000000 0.000000e+00
## 8   CB4856   H  0.00000000 0.000000e+00
## 9  CX11314   A  0.00000000 0.000000e+00
## 10 CX11314   B  0.00000000 0.000000e+00
## 11 CX11314   C  1.97457978 1.073433e+01
## 12 CX11314   D  0.00000000 0.000000e+00
## 13 CX11314   E  2.36542055 1.203060e+01
## 14 CX11314   F  0.00000000 0.000000e+00
## 15 CX11314   G  0.00000000 0.000000e+00
## 16 CX11314   H  3.07532821 8.635890e+00
## 17  ED3017   A  0.00000000 0.000000e+00
## 18  ED3017   B  0.00000000 0.000000e+00
## 19  ED3017   C  0.00000000 0.000000e+00
## 20  ED3017   D  0.00000000 0.000000e+00
## 21  ED3017   E  0.00000000 0.000000e+00
## 22  ED3017   F  0.00000000 0.000000e+00
## 23  ED3017   G  0.00000000 0.000000e+00
## 24  ED3017   H  0.00000000 0.000000e+00
## 25 JT11398   A  0.27370554 7.848741e+00
## 26 JT11398   B  0.36539507 9.322311e+00
## 27 JT11398   C  0.00000000 0.000000e+00
## 28 JT11398   D  0.59322740 2.990597e+00
## 29 JT11398   E  1.38941732 1.067820e+01
## 30 JT11398   F  0.32271073 1.500638e+01
## 31 JT11398   G  0.29206279 4.040871e+00
## 32 JT11398   H  0.16415606 7.710411e+02
## 33   DL238   A  0.00000000 0.000000e+00
## 34   DL238   B  0.00000000 0.000000e+00
## 35   DL238   C  0.00000000 0.000000e+00
## 36   DL238   D  0.00000000 0.000000e+00
## 37   DL238   E  0.00000000 0.000000e+00
## 38   DL238   F  0.00000000 0.000000e+00
## 39   DL238   G  0.00000000 0.000000e+00
## 40   DL238   H  0.00000000 0.000000e+00
## 41      N2   A  0.00000000 0.000000e+00
## 42      N2   B  0.00000000 0.000000e+00
## 43      N2   C  0.00000000 0.000000e+00
## 44      N2   D  0.00000000 0.000000e+00
## 45      N2   E  0.00000000 0.000000e+00
## 46      N2   F  0.00000000 0.000000e+00
## 47      N2   G  0.00000000 0.000000e+00
## 48      N2   H  0.00000000 0.000000e+00
## 49    MY23   A  0.97111075 4.286472e+00
## 50    MY23   B  1.77938886 5.194809e+00
## 51    MY23   C  1.00842398 4.236928e+00
## 52    MY23   D  0.00000000 0.000000e+00
## 53    MY23   E  1.48227547 3.177019e+00
## 54    MY23   F  1.09617050 2.798563e+00
## 55    MY23   G  0.00000000 0.000000e+00
## 56    MY23   H  0.76277672 5.316906e+00
## 57   JU258   A  0.44668637 3.064911e+01
## 58   JU258   B  0.40871405 5.377196e+00
## 59   JU258   C  0.28630440 1.914156e+01
## 60   JU258   D  0.42504775 2.317747e+01
## 61   JU258   E  2.39507382 7.061269e+00
## 62   JU258   F  0.30339375 1.694583e+02
## 63   JU258   G  0.51125319 1.012929e+01
## 64   JU258   H  0.25808949 3.222718e+02
## 65  EG4725   A  0.34565444 4.609716e+02
## 66  EG4725   B  0.00000000 0.000000e+00
## 67  EG4725   C -0.09775586 4.319641e-05
## 68  EG4725   D  0.36901708 1.824635e+01
## 69  EG4725   E  0.00000000 0.000000e+00
## 70  EG4725   F  0.00000000 0.000000e+00
## 71  EG4725   G  1.05637738 5.652390e+00
## 72  EG4725   H  0.40503945 5.914486e+01
## 73   LKC34   A  0.00000000 0.000000e+00
## 74   LKC34   B  0.00000000 0.000000e+00
## 75   LKC34   C  0.00000000 0.000000e+00
## 76   LKC34   D  0.00000000 0.000000e+00
## 77   LKC34   E  0.00000000 0.000000e+00
## 78   LKC34   F  0.00000000 0.000000e+00
## 79   LKC34   G  0.00000000 0.000000e+00
## 80   LKC34   H  0.00000000 0.000000e+00
## 81   JU775   A  0.57584634 8.456328e+00
## 82   JU775   B  0.00000000 0.000000e+00
## 83   JU775   C  0.82560105 6.759262e+00
## 84   JU775   D  0.69792824 1.689851e+01
## 85   JU775   E  0.00000000 0.000000e+00
## 86   JU775   F  0.89167814 4.473051e+00
## 87   JU775   G  0.65743189 6.300755e+00
## 88   JU775   H  0.78880402 1.581998e+01
## 89    MY16   A  0.00000000 0.000000e+00
## 90    MY16   B  0.00000000 0.000000e+00
## 91    MY16   C  0.00000000 0.000000e+00
## 92    MY16   D  0.00000000 0.000000e+00
## 93    MY16   E  0.00000000 0.000000e+00
## 94    MY16   F  0.00000000 0.000000e+00
## 95    MY16   G  0.00000000 0.000000e+00
## 96    MY16   H  0.00000000 0.000000e+00
```

## 2 Parameter Logistic Function Fits by Well ##



![plot of chunk Well_Fits](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Fits-1.png) 

## Strain Mean Data ##



![plot of chunk Strain_Mean](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Mean-1.png) 

## Strain Median Data ##

![plot of chunk Strain_Median](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Median-1.png) 

## Strain Total Data ##

![plot of chunk Strain_Total](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Total-1.png) 

## Strain Normalized Data ##



![plot of chunk Strain_Normalized](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Normalized-1.png) 

## Strain Curve Fitting ##


```
##     strain    bparam    cparam
## 1   CB4856 0.0000000  0.000000
## 2  CX11314 2.5183853 10.416471
## 3   ED3017 0.0000000  0.000000
## 4  JT11398 0.9661807 15.375264
## 5    DL238 0.0000000  0.000000
## 6       N2 0.0000000  0.000000
## 7     MY23 1.0969124  3.935336
## 8    JU258 2.4423122 12.232556
## 9   EG4725 0.5962902 33.591470
## 10   LKC34 0.0000000  0.000000
## 11   JU775 0.7177513  8.044794
## 12    MY16 0.0000000  0.000000
```

## 2 Parameter Logistic Function Fits by Strain ##



![plot of chunk Strain_Fits](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Fits-1.png) 

## Plate Distribution ##

![plot of chunk Plate_Dist](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Plate_Dist-1.png) 

## Plate Data ##



![plot of chunk Plate](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Plate-1.png) 

## Implementing NLS ##


