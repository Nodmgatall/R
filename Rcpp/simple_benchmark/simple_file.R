require(Rcpp)
library(microbenchmark)
library(ggplot2)
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

myRinlineMean <- cppFunction("
    double mean(std::vector<double> x){
        double result = 0;
        for(auto v : x)
        {
        result += v;
        }
        return result/x.size();
                             }")
result_benchmark <- microbenchmark(
myRmean(x), myCmean(x), myRinlineMean(x)
,times=5L)
autoplot(result_benchmark)
result_benchmark
myRinlineMean(x)
myRmean(x)
myCmean(x)
