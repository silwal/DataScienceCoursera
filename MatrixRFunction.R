colMean<-function(df,removeNA=TRUE){
  nofcol<-ncol(df)
  
  means<-numeric(nofcol)
  for(i in 1:nofcol){
    means[i] <- mean(df[,i], na.rm=removeNA)
  }
  means
}