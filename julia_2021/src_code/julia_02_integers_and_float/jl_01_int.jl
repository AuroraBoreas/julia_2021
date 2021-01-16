println(1)
println(1234)

println(typeof(1))

println(Sys.WORD_SIZE)

println(0x1)
println(0x123)
ans = 0x123
println(typeof(ans))

ans = 0b10
println(ans)
println(typeof(ans))

#  ofc, oct is supported too
ans = 0o0011
println(ans)
println(typeof(ans))

# min, max of primitive types
println(typemin(Int32), ", " ,typemax(Int32))

# REPL: read-eval-print-loop
for T in [Int8, Int16, Int32, Int64, Int128, UInt8, UInt16, UInt32, UInt64, UInt128]
    println("$(lpad(T, 7)): [$(typemin(T)), $(typemax)]")
end

# overflow
x = typemax(Int64)
x = x + 1
println(x)

# an example of overflow behavior and how to potentially resolve it it as follow:
y = 10 ^ 19
println(y)
y = big(10) ^ 19
println(y)

#  divide zero

try
    z = 1 / 0
catch e
    println("ZeroDivisionError", e)
finally
    z = 10d
    println(z)
end


