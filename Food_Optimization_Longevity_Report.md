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
 



## Raw Activity

![plot of chunk Raw](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Raw-1.png) 










## Well Normalized Data

![plot of chunk Well_Normalized](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Normalized-1.png) 




## Combined Data

![plot of chunk Combined](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Combined-1.png) 




## Strain Normalized Data

![plot of chunk Strain_Normalized](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Normalized-1.png) 




## Summary Data

![plot of chunk Summary](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Summary-1.png) 

## Plate Distribution

![plot of chunk Plate_Dist](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Plate_Dist-1.png) 




## Plate Data

![plot of chunk Plate](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Plate-1.png) 

## Curve Fitting


```
##     strain row        bparam       cparam
## 1   CB4856   A    0.00000000 0.000000e+00
## 2   CB4856   B    0.00000000 0.000000e+00
## 3   CB4856   C    0.00000000 0.000000e+00
## 4   CB4856   D    0.00000000 0.000000e+00
## 5   CB4856   E    0.00000000 0.000000e+00
## 6   CB4856   F    0.00000000 0.000000e+00
## 7   CB4856   G    0.00000000 0.000000e+00
## 8   CB4856   H    0.00000000 0.000000e+00
## 9  CX11314   A    3.34370188 5.805030e+00
## 10 CX11314   B    7.07277572 6.276911e+00
## 11 CX11314   C   10.57931698 6.572064e+00
## 12 CX11314   D    3.12070438 6.459406e+00
## 13 CX11314   E 2039.48872493 1.969134e+03
## 14 CX11314   F    4.44565372 6.699855e+00
## 15 CX11314   G    6.57898878 6.070769e+00
## 16 CX11314   H   22.28826716 6.980679e+00
## 17  ED3017   A    0.00000000 0.000000e+00
## 18  ED3017   B    0.00000000 0.000000e+00
## 19  ED3017   C    0.00000000 0.000000e+00
## 20  ED3017   D    0.00000000 0.000000e+00
## 21  ED3017   E    0.00000000 0.000000e+00
## 22  ED3017   F    0.00000000 0.000000e+00
## 23  ED3017   G    0.00000000 0.000000e+00
## 24  ED3017   H    0.00000000 0.000000e+00
## 25 JT11398   A   -0.38232840 1.118329e+00
## 26 JT11398   B    0.04316520 2.847720e+04
## 27 JT11398   C    2.02023997 2.527931e+00
## 28 JT11398   D    0.89139061 2.863834e+00
## 29 JT11398   E    0.80115928 2.416647e+01
## 30 JT11398   F    0.40688773 9.270862e+00
## 31 JT11398   G    0.06169450 1.698114e+01
## 32 JT11398   H    0.11399761 2.464716e+04
## 33   DL238   A    0.00000000 0.000000e+00
## 34   DL238   B    0.00000000 0.000000e+00
## 35   DL238   C    0.00000000 0.000000e+00
## 36   DL238   D    0.00000000 0.000000e+00
## 37   DL238   E    0.00000000 0.000000e+00
## 38   DL238   F    0.00000000 0.000000e+00
## 39   DL238   G    0.00000000 0.000000e+00
## 40   DL238   H    0.00000000 0.000000e+00
## 41      N2   A    0.00000000 0.000000e+00
## 42      N2   B    0.00000000 0.000000e+00
## 43      N2   C    0.00000000 0.000000e+00
## 44      N2   D    0.00000000 0.000000e+00
## 45      N2   E    0.00000000 0.000000e+00
## 46      N2   F    0.00000000 0.000000e+00
## 47      N2   G    0.00000000 0.000000e+00
## 48      N2   H    0.00000000 0.000000e+00
## 49    MY23   A    0.88942941 4.569057e+00
## 50    MY23   B    1.34911168 5.802661e+00
## 51    MY23   C    1.00271703 4.043103e+00
## 52    MY23   D    0.95450190 3.581553e+00
## 53    MY23   E    1.54341693 3.129531e+00
## 54    MY23   F    1.63971522 2.609841e+00
## 55    MY23   G    1.09023763 2.801551e+00
## 56    MY23   H    0.57196723 6.849284e+00
## 57   JU258   A    0.11766204 2.595207e+04
## 58   JU258   B    0.03612053 2.658377e+04
## 59   JU258   C   -0.59743976 8.426385e-01
## 60   JU258   D    0.17440239 5.552952e+02
## 61   JU258   E    0.07876475 2.559290e+04
## 62   JU258   F    0.14841174 2.350063e+04
## 63   JU258   G    0.35919688 1.454459e+01
## 64   JU258   H    0.12693260 2.726505e+04
## 65  EG4725   A    0.21017278 2.523640e+04
## 66  EG4725   B    0.36045354 5.777444e+01
## 67  EG4725   C    0.71226400 1.247677e+01
## 68  EG4725   D    0.64463848 8.285793e+00
## 69  EG4725   E    0.13716039 2.390580e+04
## 70  EG4725   F    0.13320259 1.107840e+03
## 71  EG4725   G    1.16493399 5.343966e+00
## 72  EG4725   H    1.09567789 8.739396e+00
## 73   LKC34   A    0.00000000 0.000000e+00
## 74   LKC34   B    0.00000000 0.000000e+00
## 75   LKC34   C    0.00000000 0.000000e+00
## 76   LKC34   D    0.00000000 0.000000e+00
## 77   LKC34   E    0.00000000 0.000000e+00
## 78   LKC34   F    0.00000000 0.000000e+00
## 79   LKC34   G    0.00000000 0.000000e+00
## 80   LKC34   H    0.00000000 0.000000e+00
## 81   JU775   A    0.58159062 7.706115e+00
## 82   JU775   B    1.91416690 3.531443e+00
## 83   JU775   C    0.66904158 8.280689e+00
## 84   JU775   D    0.44619198 4.334659e+01
## 85   JU775   E    0.90697502 5.514175e+00
## 86   JU775   F    0.95533778 4.250305e+00
## 87   JU775   G    0.95802679 4.667058e+00
## 88   JU775   H    0.91203337 1.321614e+01
## 89    MY16   A    0.00000000 0.000000e+00
## 90    MY16   B    0.00000000 0.000000e+00
## 91    MY16   C    0.00000000 0.000000e+00
## 92    MY16   D    0.00000000 0.000000e+00
## 93    MY16   E    0.00000000 0.000000e+00
## 94    MY16   F    0.00000000 0.000000e+00
## 95    MY16   G    0.00000000 0.000000e+00
## 96    MY16   H    0.00000000 0.000000e+00
```

```
##     strain      bparam     cparam
## 1   CB4856   0.0000000   0.000000
## 2  CX11314   6.4422892   6.751465
## 3   ED3017   0.0000000   0.000000
## 4  JT11398   0.6954730  15.318922
## 5    DL238   0.0000000   0.000000
## 6       N2   0.0000000   0.000000
## 7     MY23   1.0708291   3.668031
## 8    JU258 572.4352964 659.915869
## 9   EG4725   1.3416541  15.900905
## 10   LKC34   0.0000000   0.000000
## 11   JU775   0.8861796   5.994457
## 12    MY16   0.0000000   0.000000
```




## 2 Parameter Logistic Function Fits by Strain

![plot of chunk Strain_Fits](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Fits-1.png) 



## 2 Parameter Logistic Function Fits by Well

![plot of chunk Well_Fits](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Fits-1.png) 


## Implementing NLS


```r
#nlsSummary.df <- data.frame(day = summary.df$day[summary.df$strain == "CX11314"], norm.act = summary.df$norm.act[summary.df$strain == "CX11314"])
#nlsTest <- nls(norm.act ~ SSlogis(day, Asym, xmid, scal), nlsSummary.df)
#nlm(strain_twoplog, c(1, coef(nlsTest)[["xmid"]]), summary.df, "CX11314")
```
