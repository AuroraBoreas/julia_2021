# link: https://docs.julialang.org/en/v1/manual/mathematical-operations/

# arithmetic oprators
NaN * false # 0.0

false * Inf # 0.0

# bitwise operators
# x ⊻ y	bitwise xor (exclusive or). wtf? how can u type this xor sympbol?

# inplace operators

# vectorized "dot" operators. this may cause confusion..
a = [1, 2, 3]
a .^ 3

#=
3-element Array{Int64,1}:
  1
  8
 27
=#

# relational operators
#= !=, ≠	inequality. wtf?? =#

# additional functions to test numbers for special values are also supported

#=

isequal(x, y)
isfinite(x)
isinf(x)
isnan(x)

=#

println(NaN == NaN)  # false
isequal(NaN, NaN) # true 

# chaining comparisons
1 < 2 <= 2 < 3 == 3 > 2 >= 1 == 1 < 3 != 5 # true in doc but false in compiler. wtf!?

# the evaluation behavior of chained comparisons
v(x) = (println(x); x) # no return keyword?
println(v(1) < v(2) <= v(3)) # true

#=
However, the order of evaluations in a chained comparison is undefined. # wtf?!

It is strongly recommended not to use expressions with side effects (such as printing) in chained comparisons. 
If side effects are required, the short-circuit && operator should be used explicitly
=#

# elementary functions
# A
# R
# L
# B
# A
# C
# O
# O

# precedences

#=
Numeric literal coefficients, e.g. 2x, 
are treated as multiplications with higher precedence than any other binary operation, 
and also have higher precedence than ^.

You can also find the numerical precedence for any given operator via the built-in function 
Base.operator_precedence, where higher numbers take precedence:

=#

Base.operator_precedence(:+), Base.operator_precedence(:*), Base.operator_precedence(:.)


#=

A symbol representing the operator associativity can also be found by calling the built-in function 
Base.operator_associativity:

=#

Base.operator_associativity(:-), Base.operator_associativity(:+), Base.operator_associativity(:^)

# numerical conversions
# method 01: T(var)
# method 02: round(Int, x) is shorthand for Int(round(x))

# Division functions
#=
mod(x,y)	modulus; satisfies x == fld(x,y)*y + mod(x,y); sign matches y
mod1(x,y)	mod with offset 1; returns r∈(0,y] for y>0 or r∈[y,0) for y<0, where mod(r, y) == mod(x, y)
mod2pi(x)	modulus with respect to 2pi; 0 <= mod2pi(x)   < 2pi
=#

# Sign and absolute value functions
#=

abs(x)	a positive value with the magnitude of x
abs2(x)	the squared magnitude of x
sign(x)	indicates the sign of x, returning -1, 0, or +1
signbit(x)	indicates whether the sign bit is on (true) or off (false)
copysign(x,y)	a value with the magnitude of x and the sign of y
flipsign(x,y)	a value with the magnitude of x and the sign of x*y

=#

# powers, logs, and roots
#=
sqrt(x), √x	square root of x
cbrt(x), ∛x	cube root of x
hypot(x,y)	hypotenuse of right-angled triangle with other sides of length x and y
exp(x)	natural exponential function at x
expm1(x)	accurate exp(x)-1 for x near zero
ldexp(x,n)	x*2^n computed efficiently for integer values of n
log(x)	natural logarithm of x
log(b,x)	base b logarithm of x
log2(x)	base 2 logarithm of x
log10(x)	base 10 logarithm of x
log1p(x)	accurate log(1+x) for x near zero
exponent(x)	binary exponent of x
significand(x)	binary significand (a.k.a. mantissa) of a floating-point number x

=#


# trigonometric and hyperbolic functions
#=
sin    cos    tan    cot    sec    csc
sinh   cosh   tanh   coth   sech   csch
asin   acos   atan   acot   asec   acsc
asinh  acosh  atanh  acoth  asech  acsch
sinc   cosc
=#

# special functions
# in package SpecialFunctions.jl