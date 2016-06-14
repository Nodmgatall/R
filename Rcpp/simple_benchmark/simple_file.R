require(Rcpp)
library(microbenchmark)
library(ggplot2)
sourceCpp("simple_file_source.cpp")

writeLines(" ")
writeLines(" ")
writeLines("  === Programm start === ")

writeLines("1 === gernerating random vector of length 100000")
x <- runif(10000,0,1000)
writeLines("2 === gernerating done")

writeLines("2 === creating r mean function")
myRmean <- function(x)
{
    result = 0
    for(e in x)
    {
        result = result + e
    }
    return(result/length(x))
}

writeLines("4 === compiling c++ function")
writeLines(" ")
time <- proc.time()
myRinlineMean <- cppFunction(	"
    double mean(std::vector<double> x){
        double result = 0;
        for(auto v : x)
        {
        result += v;
        }
        return result/x.size();
    }")
proc.time() - time

writeLines(" ")
writeLines("5 === running benchmark\n")
result_benchmark <- microbenchmark(
myRmean(x), myCmean(x), myRinlineMean(x)
,times=5L)

writeLines("6 === generating plot")
autoplot(result_benchmark)

writeLines("7 === Printing result of benchmark")
writeLines(" ")
result_benchmark
writeLines(" ")

writeLines("8 === function results")
myRmean(x)
myCmean(x)
myRinlineMean(x)

writeLines(" === Programm end === ")
writeLines(" ")
writeLines(" ")
