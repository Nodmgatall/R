library(Rcpp)
library(test)

rcpp_hello_world()
x = 100
x
return_given_value(x)
 i = c(1,2,3)
j = c(1,4,6, 22)

add_lists(i,j)
"done"

cppFunction('double add(double x, double y, double z)
{
    std::cout << "lol" << std::endl;
    double sum = x + y + z;
    return sum;
}')

add(2,33,24.3)
