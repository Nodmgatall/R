#include <Rcpp.h>
#include <iostream>

// [[Rcpp::export]]
void hello_world_two()
{
    std::cout << "Hello wordld" << std::endl;
}

// [[Rcpp::export]]
double myCmean(Rcpp::NumericVector x)
{
   
    double result = 0;
    for(auto v : x)
    {
        result += v;
    }
    return result/x.length();
}
