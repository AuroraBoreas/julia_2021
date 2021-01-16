# link: https://docs.julialang.org/en/v1/manual/complex-and-rational-numbers/

x = 1 + 2im
x

# all the standard arithmetic operations are supported with complex numbers
(x)*(2-3im)

#=
Note that 3/4im == 3/(4*im) == -(3/4*im), 
since a literal coefficient binds more tightly than division.
=#


real(x) # 1

imag(x) # 2

conj(1 + 2im)