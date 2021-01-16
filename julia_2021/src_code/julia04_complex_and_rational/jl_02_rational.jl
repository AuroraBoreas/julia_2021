# link: https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/

# rational numbers
#=
Julia has a rational number type to represent exact ratios of integers. 
Rationals are constructed using the // operator:
=#

x = 2//3
numerator(x) # 2
denominator(x) # 3
float(x) # .666
typeof(x)