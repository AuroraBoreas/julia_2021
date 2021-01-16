# e-notation
x = 1.0
y = 1.
z = .5

a = -1.23
b = 1e10    # 100
c = 2.5e-4  # .00025

# f-notation
d = 0.5f0
e = typeof(d)
f = 2.5f-4

# conversion
x1 = -1.5
x2 = Float32(x1)
x3 = typeof(x2)

# hex float is valid as Float64 ONLY
y1 = 0x1p0
y2 = 0x1.8p3
y3 = 0x.4p-1
y4 = typeof(y3)

# half-precision float are supported as Float16,
# but they are implemented in software and user Float32 for calculations
z1 = sizeof(Float16(4.))
z2 = 2 * Float16(4.)

# like python, underscore _ can be used as DIGIT separator
a1 = 10_000
a2 = 0.000_000_005
a3 = 0xdead_beef
a4 = 0b1011_0010

# float zero
println(0.0 == -0.0) # true

println(bitstring(0.0))

println(bitstring(-0.0))

# special float values
println(Inf)
println(-Inf)
println(NaN)

println(Inf + Inf)
println(Inf * Inf)
println(Inf / Inf)
println(0 * Inf)

# typemin and typemax also apply to float type

println("$(typemin(Float16)), $(typemax(Float16))")
println("$(typemin(Float32)), $(typemax(Float32))")
println("$(typemin(Float64)), $(typemax(Float64))")

# machine epsilon
# Most real numbers cannot be represented exactly with floating-point numbers, 
# and so for many purposes it is important to know 
# the distance between two adjacent representable floating-point numbers, 
# which is often known as machine epsilon.

x = eps(Float32)
println(x)
x = eps(Float64)
println(x)
x = eps() # same as eps(Float64)
println(x)

#=
[concept] 
"discrete math"

The distance between two adjacent representable floating-point numbers is not constant, 
but is smaller for smaller values and larger for larger values. In other words,
the representable floating-point numbers are densest in the real number line near zero, 
and grow sparser exponentially as one moves farther away from zero. 

The eps function can also take a floating-point value as an argument, 
and gives the absolute difference between that value and the next representable floating point value. 
That is, 
eps(x) yields a value of the same type as x such that x + eps(x)
is the next representable floating-point value larger than x
=#

x1 = 1.0
x2 = eps(x1)
println(x2)
x1 = 1000.
x2 = eps(x1)
println(x2)

# nextfloat and prevfloat
x3 = 1.25f0
x4 = nextfloat(x3)
x5 = prevfloat(x3)

println(bitstring(x5))
println(bitstring(x3))
println(bitstring(x4))

# rounding modes
x6 = round(x3)
println(x6)

# arbitrary precision arithmetic: BigInt, BigFloat types
# type promotion and conversion mechanism

z1 = BigInt(typemax(Int64))+1
z2 = big"123456789012345678901234567890" + 1
z3 = parse(BigInt, "123456789012345678901234567890") + 1
z4 = big"1.23456789012345678901"
z5 = parse(BigFloat, "1.23456789012345678901")
z6 = BigFloat(2.0^66) / 3
z7 = factorial(BigInt(40))
println(z7)

# but, type promotion btwn primitive types above and BigInt/BigFloat is NOT automatic
# and must be explicitlly stated

a1 = typemin(Int64)
a1 = a1 - 1
typeof(x)   # Int64

b1 = BigInt(typemin(Int64))
b1 = b1 - 1
typeof(b1)  # BigInt

# globally change rounding mode and precision of BigFloat type is supported
setrounding(BigFloat, RoundUp) do
    BigFloat(1) + parse(BigFloat, "0.1")
end

setrounding(BigFloat, RoundDown) do
    BigFloat(1) + parse(BigFloat, "0.1")
end

setprecision(40) do
    BigFloat(1) + parse(BigFloat, "0.1")
end

# numeric literal coefficients

c = 3
2c^2 - 3c + 1
1.5c^2 - .5x + 1
2^2c

# but prefer parenthesises
2(c-1)^2 - 3(c-1) + 1

(c-1)c

# following forms are not supported
# (x-1)(x+1) # not OK
# c(c+1) # not OK

# literal zero and one
d = 42
zero(d)
one(d)

