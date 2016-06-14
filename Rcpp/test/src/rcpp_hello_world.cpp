#include <Rcpp.h>
#include <iostream>
#include <vector>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_hello_world() {

    std::cout << "Hello World" << std::endl;
}

// [[Rcpp::export]]
int return_given_value(int value) {
    return value;
}

// [[Rcpp::export]]
std::vector<int> add_lists(std::vector<int> vec1, std::vector<int> vec2) {
    unsigned long max_length = std::min(vec1.size(), vec2.size());
    std::vector<int> result;
    for (unsigned long i = 0; i < max_length; i++) {
        result.push_back(vec1[i] + vec2[i]);
    }
    return result;
}
