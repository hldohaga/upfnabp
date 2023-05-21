

df1 <- data.table(E = c(3,5,2,1,NA,NA,NA,NA,NA,NA,NA,NA,NA),W =c(NA,NA,NA,NA,3,NA,2,1,NA,NA,NA,NA,NA),
S= c(NA,NA,NA,NA,NA,NA,NA,NA,3,5,2,1,NA),N=c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,1))

df1a <- df1[,IMD:=E]
df1a <- df1a[is.na(IMD),IMD:=W]
df1a <- df1a[is.na(IMD),IMD:=N]
df1a <- df1a[is.na(IMD),IMD:=S]                 
            df1a

    
        