library(Rcpp)

cppFunction('void hello_world()
            {
                std::cout << "hello world" << std::endl;
            }')
