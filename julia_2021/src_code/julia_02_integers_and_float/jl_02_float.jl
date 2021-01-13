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

# The eps function can also take a floating-point value as an argument, 
# and gives the absolute difference between that value and the next representable floating point value. 
# That is, 
# eps(x) yields a value of the same type as x such that x + eps(x)
# is the next representable floating-point value larger than x

x1 = 1.0
x2 = eps(x1)
println(x2)
x1 = 1000.
x2 = eps(x1)
println(x2)