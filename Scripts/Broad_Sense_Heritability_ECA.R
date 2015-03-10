# x should be a data frame in long format that contains a column "pheno" and a column "strain"

library("reshape2")
library("lme4")

H2.fun <- function(x){
  pdata <- x
  pdata = split(pdata$pheno, pdata$strain)
  pdata.notNAcnt = sapply(pdata, function(x){sum(!is.na(x))})
  pdata[pdata.notNAcnt<2]=NULL
  pdata.melted = melt(pdata)
  names(pdata.melted)=c('pheno', 'strain')
  pdata.melted$strain=as.factor(pdata.melted$strain)
  reffMod = lmer(pheno ~ 1 + (1|strain), data=pdata.melted)
  Var_Random_effect <- as.numeric(VarCorr(reffMod))
  Var_Residual <- attr(VarCorr(reffMod), "sc")^2
  H2 <- Var_Random_effect/(Var_Random_effect+Var_Residual)
  return(H2)
}

H2.test <- function(pheno, strain){
  strain <- as.factor(strain)
  reffMod <- lmer(pheno ~ 1 + (1|strain))
  Var_Random_effect <- as.numeric(VarCorr(reffMod))
  Var_Residual <- attr(VarCorr(reffMod), "sc")^2
  H2 <- Var_Random_effect/(Var_Random_effect+Var_Residual)
  return(H2)  
}


