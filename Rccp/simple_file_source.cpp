#include <Rcpp.h>
#include <iostream>

RcppExport SEXP hello_world_two()
{
    std::cout << "Hello wordld" << std::endl;
}
