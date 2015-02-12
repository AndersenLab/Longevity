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



## Well Mean Data ##

![plot of chunk Well_Mean](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Mean-1.png) 

## Well Median Data ##

![plot of chunk Well_Median](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Median-1.png) 

## Well Total Data ##

![plot of chunk Well_Total](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Total-1.png) 

## Well Normalized Data ##



![plot of chunk Well_Normalized](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Normalized-1.png) 

## Setting Top of Curve by Well ##



![plot of chunk Well_Adjusted](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Well_Adjusted-1.png) 

## Well Curve Fitting ##


```
##     strain row    bparam       cparam
## 1   CB4856   A 0.0000000     0.000000
## 2   CB4856   B 0.0000000     0.000000
## 3   CB4856   C 0.0000000     0.000000
## 4   CB4856   D 0.0000000     0.000000
## 5   CB4856   E 0.0000000     0.000000
## 6   CB4856   F 0.0000000     0.000000
## 7   CB4856   G 0.0000000     0.000000
## 8   CB4856   H 0.0000000     0.000000
## 9  CX11314   A 0.0000000     0.000000
## 10 CX11314   B 0.0000000     0.000000
## 11 CX11314   C 2.8062218     9.487080
## 12 CX11314   D 0.0000000     0.000000
## 13 CX11314   E 3.9846274    10.505247
## 14 CX11314   F 0.0000000     0.000000
## 15 CX11314   G 0.0000000     0.000000
## 16 CX11314   H 3.3923098     8.497516
## 17  ED3017   A 0.0000000     0.000000
## 18  ED3017   B 0.0000000     0.000000
## 19  ED3017   C 0.0000000     0.000000
## 20  ED3017   D 0.0000000     0.000000
## 21  ED3017   E 0.0000000     0.000000
## 22  ED3017   F 0.0000000     0.000000
## 23  ED3017   G 0.0000000     0.000000
## 24  ED3017   H 0.0000000     0.000000
## 25 JT11398   A 0.5201646     5.390452
## 26 JT11398   B 0.6119947     6.548784
## 27 JT11398   C 0.0000000     0.000000
## 28 JT11398   D 0.7557639     3.037268
## 29 JT11398   E 1.4936444    10.305032
## 30 JT11398   F 0.4588698     9.657678
## 31 JT11398   G 0.6237576     3.579032
## 32 JT11398   H 0.5992081    17.287791
## 33   DL238   A 0.0000000     0.000000
## 34   DL238   B 0.0000000     0.000000
## 35   DL238   C 0.0000000     0.000000
## 36   DL238   D 0.0000000     0.000000
## 37   DL238   E 0.0000000     0.000000
## 38   DL238   F 0.0000000     0.000000
## 39   DL238   G 0.0000000     0.000000
## 40   DL238   H 0.0000000     0.000000
## 41      N2   A 0.0000000     0.000000
## 42      N2   B 0.0000000     0.000000
## 43      N2   C 0.0000000     0.000000
## 44      N2   D 0.0000000     0.000000
## 45      N2   E 0.0000000     0.000000
## 46      N2   F 0.0000000     0.000000
## 47      N2   G 0.0000000     0.000000
## 48      N2   H 0.0000000     0.000000
## 49    MY23   A 1.2032550     4.080862
## 50    MY23   B 1.8796975     5.161615
## 51    MY23   C 1.1653018     4.122818
## 52    MY23   D 0.0000000     0.000000
## 53    MY23   E 1.5921649     3.159055
## 54    MY23   F 1.0736332     2.795297
## 55    MY23   G 0.0000000     0.000000
## 56    MY23   H 0.7603865     5.316147
## 57   JU258   A 0.7449420    14.275333
## 58   JU258   B 0.5723164     4.773806
## 59   JU258   C 0.3245802    15.390686
## 60   JU258   D 0.5673241    14.623456
## 61   JU258   E 2.7380781     7.026595
## 62   JU258   F 1.4530110    13.634600
## 63   JU258   G 0.6722898     8.197621
## 64   JU258   H 0.5876527    28.161742
## 65  EG4725   A 0.4430020   158.963641
## 66  EG4725   B 0.0000000     0.000000
## 67  EG4725   C 0.1331840 24344.939852
## 68  EG4725   D 0.6666164     8.950813
## 69  EG4725   E 0.0000000     0.000000
## 70  EG4725   F 0.0000000     0.000000
## 71  EG4725   G 0.9841981     5.825992
## 72  EG4725   H 0.7771111    16.312748
## 73   LKC34   A 0.0000000     0.000000
## 74   LKC34   B 0.0000000     0.000000
## 75   LKC34   C 0.0000000     0.000000
## 76   LKC34   D 0.0000000     0.000000
## 77   LKC34   E 0.0000000     0.000000
## 78   LKC34   F 0.0000000     0.000000
## 79   LKC34   G 0.0000000     0.000000
## 80   LKC34   H 0.0000000     0.000000
## 81   JU775   A 0.5662286     8.511685
## 82   JU775   B 0.0000000     0.000000
## 83   JU775   C 1.0496206     5.979321
## 84   JU775   D 0.7820408    14.577801
## 85   JU775   E 0.0000000     0.000000
## 86   JU775   F 0.8237166     4.614749
## 87   JU775   G 0.5804357     6.897081
## 88   JU775   H 0.8956715    13.653622
## 89    MY16   A 0.0000000     0.000000
## 90    MY16   B 0.0000000     0.000000
## 91    MY16   C 0.0000000     0.000000
## 92    MY16   D 0.0000000     0.000000
## 93    MY16   E 0.0000000     0.000000
## 94    MY16   F 0.0000000     0.000000
## 95    MY16   G 0.0000000     0.000000
## 96    MY16   H 0.0000000     0.000000
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

## Setting Top of Curve by Strain ##





## Strain Curve Fitting ##


```
##     strain    bparam    cparam
## 1   CB4856 0.0000000  0.000000
## 2  CX11314 3.3511262  9.656053
## 3   ED3017 0.0000000  0.000000
## 4  JT11398 1.7655658 10.771711
## 5    DL238 0.0000000  0.000000
## 6       N2 0.0000000  0.000000
## 7     MY23 1.1888631  3.874391
## 8    JU258 2.5275067 12.031918
## 9   EG4725 0.7965045 20.065887
## 10   LKC34 0.0000000  0.000000
## 11   JU775 0.7403152  7.840888
## 12    MY16 0.0000000  0.000000
```

## 2 Parameter Logistic Function Fits by Strain ##



![plot of chunk Strain_Fits](Scripts/../Data/Raw/p03_4mgmL//p03_4mgmL_Strain_Fits-1.png) 

## Implementing NLS ##


