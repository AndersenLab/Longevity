---
title: "Analysis of Longevity"
author: "Ryan Abdella"
date: "January 15, 2015"
output:
  html_document:
    css: ~/Github/Food-Optimization/Scripts/foghorn_edited.css
---



```
## [1] "p04_3mgmL"
```



## Raw Activity ##

![plot of chunk Raw](./Data/Processed/p04_3mgmL/p04_3mgmL_Raw-1.png) 

## Cleaned Data ##



![plot of chunk Cleaned](./Data/Processed/p04_3mgmL/p04_3mgmL_Cleaned-1.png) 



## Well Mean Data ##

![plot of chunk Well_Mean](./Data/Processed/p04_3mgmL/p04_3mgmL_Well_Mean-1.png) 

## Well Median Data ##

![plot of chunk Well_Median](./Data/Processed/p04_3mgmL/p04_3mgmL_Well_Median-1.png) 

## Well Total Data ##

![plot of chunk Well_Total](./Data/Processed/p04_3mgmL/p04_3mgmL_Well_Total-1.png) 

## Well Normalized Data ##



![plot of chunk Well_Normalized](./Data/Processed/p04_3mgmL/p04_3mgmL_Well_Normalized-1.png) 

## Setting Top of Curve by Well ##



![plot of chunk Well_Adjusted](./Data/Processed/p04_3mgmL/p04_3mgmL_Well_Adjusted-1.png) 

## Well Curve Fitting ##


| col|row |     bparam|       cparam|
|---:|:---|----------:|------------:|
|   1|A   |  0.4907217|    15.455155|
|   1|B   |  0.2976364|   212.370196|
|   1|C   | 33.3313544|    69.880444|
|   1|D   | 26.9976192|    65.289147|
|   1|E   |  2.5999105|    12.228420|
|   1|F   |  4.2140867|    10.019024|
|   1|G   |  0.8969786|    14.934189|
|   1|H   | 17.3098950|    46.143083|
|   2|A   |  1.2860242|    11.578379|
|   2|B   |  1.0953565|     8.039267|
|   2|C   |  1.7529553|     7.620018|
|   2|D   |  2.7251401|     9.486300|
|   2|E   |  1.6765805|     9.562593|
|   2|F   |  1.1784758|     9.736571|
|   2|G   |  1.4318945|     9.060504|
|   2|H   |  1.2945170|    10.302307|
|   3|A   |  0.9273989|     9.811766|
|   3|B   |  0.4155032|    18.001000|
|   3|C   |  0.4633813|    12.823668|
|   3|D   |  0.0000000|     0.000000|
|   3|E   |  0.8245068|    14.504490|
|   3|F   |  0.0784116| 18776.730308|
|   3|G   |  1.2257132|     9.627997|
|   3|H   |  1.6618314|     6.824020|
|   4|A   |  0.0932032| 22795.365725|
|   4|B   |  0.1083320| 24484.235702|
|   4|C   |  0.6751710|    20.171956|
|   4|D   |  0.4190917|    20.169615|
|   4|E   |  0.0000000|     0.000000|
|   4|F   |  0.8702512|    17.278342|
|   4|G   |  0.6596336|     5.883133|
|   4|H   |  0.4745997|    14.543708|
|   5|A   |  0.7214829|    19.419464|
|   5|B   |  1.2526607|     2.712892|
|   5|C   |  1.3529498|     2.783009|
|   5|D   |  0.6493927|     4.784338|
|   5|E   |  1.0926853|     9.496067|
|   5|F   |  1.1646270|     3.141018|
|   5|G   |  1.2674373|     3.363297|
|   5|H   |  0.8788664|     2.883969|
|   6|A   |  0.5906168|    10.372767|
|   6|B   |  1.4165175|     2.963423|
|   6|C   |  1.1372117|     5.799256|
|   6|D   |  0.9324119|     4.743788|
|   6|E   |  1.3566119|     5.490685|
|   6|F   |  1.2963579|     5.614271|
|   6|G   |  0.8779160|     3.768734|
|   6|H   |  0.7307028|     5.846961|
|   7|A   |  0.5635891|    10.357272|
|   7|B   |  0.8706681|     4.900461|
|   7|C   |  1.0328451|     3.720508|
|   7|D   |  1.5115963|     8.323419|
|   7|E   |  1.2876046|     3.624388|
|   7|F   |  0.6584975|     2.581788|
|   7|G   |  0.9559048|     4.427236|
|   7|H   |  0.7922849|     3.738924|
|   8|A   |  0.5588609|    13.980109|
|   8|B   |  0.5659947|    44.906856|
|   8|C   |  0.8516431|    14.110797|
|   8|D   |  0.7146903|    14.236736|
|   8|E   |  0.4344989|    20.676227|
|   8|F   |  0.0524812| 24137.318457|
|   8|G   |  1.4208623|    12.825049|
|   8|H   |  0.9092016|     7.419278|
|   9|A   |  0.4067110|    67.593222|
|   9|B   |  0.2965446|   217.086711|
|   9|C   |  0.0000000|     0.000000|
|   9|D   |  0.5749865|    16.751317|
|   9|E   |  0.0000000|     0.000000|
|   9|F   |  0.5011425|    78.412181|
|   9|G   |  0.9135410|    10.784535|
|   9|H   |  0.9713737|    13.830003|
|  10|A   |  0.2046066|  1214.063617|
|  10|B   |  1.4721629|     6.905552|
|  10|C   |  0.6579666|    15.198392|
|  10|D   |  0.8562385|    18.302892|
|  10|E   |  1.2031878|     7.825820|
|  10|F   |  1.3685262|     7.802629|
|  10|G   |  0.4718014|    35.867202|
|  10|H   |  0.8353707|    10.664778|
|  11|A   |  0.4276685|    12.439147|
|  11|B   |  0.5206236|     7.315619|
|  11|C   |  0.2377153|    16.767292|
|  11|D   |  0.3105084|   583.312470|
|  11|E   |  0.3270368|    14.576388|
|  11|F   |  0.4362872|    10.405192|
|  11|G   |  0.0000000|     0.000000|
|  11|H   |  0.5012385|    21.606051|
|  12|A   |  0.7658095|     6.325033|
|  12|B   |  0.9788973|     3.393560|
|  12|C   |  0.9179284|     3.652451|
|  12|D   |  0.8598132|     4.007128|
|  12|E   |  0.3766679|    16.695838|
|  12|F   |  1.3681029|     3.185104|
|  12|G   |  1.1062307|     3.924809|
|  12|H   |  0.8912791|     2.835411|

## 2 Parameter Logistic Function Fits by Well ##



![plot of chunk Well_Fits](./Data/Processed/p04_3mgmL/p04_3mgmL_Well_Fits-1.png) 

## Strain Mean Data ##



![plot of chunk Strain_Mean](./Data/Processed/p04_3mgmL/p04_3mgmL_Strain_Mean-1.png) 

## Strain Median Data ##

![plot of chunk Strain_Median](./Data/Processed/p04_3mgmL/p04_3mgmL_Strain_Median-1.png) 

## Strain Total Data ##

![plot of chunk Strain_Total](./Data/Processed/p04_3mgmL/p04_3mgmL_Strain_Total-1.png) 

## Strain Normalized Data ##



![plot of chunk Strain_Normalized](./Data/Processed/p04_3mgmL/p04_3mgmL_Strain_Normalized-1.png) 

## Setting Top of Curve by Strain ##



![plot of chunk Strain_Adjusted](./Data/Processed/p04_3mgmL/p04_3mgmL_Strain_Adjusted-1.png) 

## Strain Curve Fitting ##


|strain  |    bparam|    cparam|
|:-------|---------:|---------:|
|CB4856  | 2.2917673| 13.080980|
|CX11314 | 1.8866335| 10.215339|
|ED3017  | 0.8871193| 11.924562|
|JT11398 | 0.7928783| 31.340490|
|DL238   | 1.0485470|  4.615375|
|N2      | 1.0062270|  4.955528|
|MY23    | 0.8978512|  4.763136|
|JU258   | 0.7630986| 21.478844|
|EG4725  | 0.6358299| 26.068933|
|LKC34   | 1.0775392| 12.284414|
|JU775   | 0.3827864| 16.821407|
|MY16    | 0.8950950|  3.909264|

## 2 Parameter Logistic Function Fits by Strain ##



![plot of chunk Strain_Fits](./Data/Processed/p04_3mgmL/p04_3mgmL_Strain_Fits-1.png) 
