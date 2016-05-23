library(inline)
source(file="simple_file_source.r")
hello_world()
hello_world_two <- cxxfunction(signature(),simple_file_source.cpp, plugin = "Rcpp")
hello_world_two
