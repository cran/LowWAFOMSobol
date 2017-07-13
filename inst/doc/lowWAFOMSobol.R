## ------------------------------------------------------------------------
library(LowWAFOMSobol)
lowWAFOMSobol.dimMinMax()

## ------------------------------------------------------------------------
lowWAFOMSobol.dimF2MinMax(10)

## ------------------------------------------------------------------------
s <- 4
m <- 10
c <- 2^m
mat <- lowWAFOMSobol.points(dimR=s, dimF2=m, count=c)
mat[1,]

## ------------------------------------------------------------------------
s <- 4
m <- 10
c <- 2^m
mat <- lowWAFOMSobol.points(dimR=s, dimF2=m, count=c, digitalShift=TRUE)
mat[1,]

