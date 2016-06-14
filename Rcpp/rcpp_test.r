library(Rcpp)
library(test)

print("using function from package <test>: hello_world()")
rcpp_hello_world()
print("using function from package <test>: return_given_value(100)")
x = 100
return_given_value(x)

i = c(1,2,3)
j = c(1,4,6)

print("using function from package <test>: add_lists(c(1,2,3), c(1,4,6))")
add_lists(i,j)

print("using function from package <test>: add(2,33,24.3)")
add(2,33,24)
