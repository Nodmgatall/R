require(Rcpp)
library(microbenchmark)
sourceCpp("simple_file_source.cpp")


x <- runif(10000,0,1000)

myRmean <- function(x)
{
    result = 0
    for(e in x)
    {
        result = result + e
    }
    return(result/length(x))
}

microbenchmark(
    myRmean(x),
    myCmean(x))

myRmean(x)
myCmean(x)
