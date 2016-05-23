#include <Rcpp.h>
#include <iostream>
#include <vector>
using namespace Rcpp;

// [[Rcpp::export]]
List rcpp_hello_world() {

    CharacterVector x = CharacterVector::create("foo", "bar");
    NumericVector y = NumericVector::create(0.0, 1.0);
    List z = List::create(x, y);
    std::cout << "function was called" << std::endl;

    return z;
}

// [[Rcpp::export]]
int return_given_value(int value) {
    std::cout << "the value given is: " << value << std::endl;
    return value;
}

// [[Rcpp::export]]
std::vector<int> add_lists(std::vector<int> vec1, std::vector<int> vec2) {
    unsigned long max_length = std::min(vec1.size(), vec2.size());
    std::cout << "vec1 size: " << vec1.size() << "  vec2 size: " << vec2.size()
              << "    new vector length: " << std::max(vec1.size(), vec2.size()) << std::endl;
    std::vector<int> result;
    for (unsigned long i = 0; i < max_length; i++) {
        result.push_back(vec1[i] + vec2[i]);
    }
    return result;
}
