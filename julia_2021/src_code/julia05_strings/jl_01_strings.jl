# strings in Julia are similar with strings in C and Java

x = 'a'
x
typeof(x)

Int(x)

x1 = 0x11_0000 # hex 1 * 16 ^ 5 + 1 * 16 ^ 4 = 16 ^ 4 * 17 = 1114112.
x2 = Char(x1) # invalid, too big for Char type. overflowed.
println(isvalid(x2)) # false

println(typemax(Char)) # -128 ~ 127

# distance btwn chars and chars

x3 = 'A'
x4 = 'a'
d = x4 - x3
x5 = 'B'
println(x5 + d) # 'b'

# string basics
# same notation in Python
# raw? unicode? r"", u"",
# access?
# splice?
# join or concatenate?
# slice?
# copy?
# reverse?
# range?

s1 = "hello world!\n"
s2 = """Bonjour tout le monde!"""

# s1[0] # not OK. 
# or 
s1[begin] # oh wow, String begins index with 1. nice
s1[5]
s1[end]

s3 = SubString(s2, 1, 4) # 1 is start position, 4 is length
println(s3)

# firstindex(str), lastindex(str), and length(str)
println(firstindex(s3))
println(lastindex(s3))
println(length(s3))

# Because of variable-length **encoding**
# lastindex(s) is not always equal to length(s)..
# for example
s4 = "\u2200 x \u2203 y"
lin = lastindex(s4)
len = length(s4)
println("last index of s4", lin)
println("length of s4", len)

# loop throu a string
for i = firstindex(s4): lastindex(s4)
    try
        println(s4[i])
    catch
        #
    end
end
# or foreach
for c in s4
    println(c)
end

# obtain indeces of a string
# eachindex: iterate over the valid character indices
# prevind: previous index
# nextind: next index
# hmm, behaves like bidirectional iterators
col = collect(eachindex(s4))
print(col)

s5 = "\xc0\xa0\xe2\x88\xe2|"
foreach(display, s5)
isvalid.(collect(s5))

#=
different behaviors between 
println: output with UTF-8 encoding string and a newline
print:   output with UTF-8 enconding w/o newline
display: output vars itself. like __str__ in python
=#

display(s5)
print(s5)
println(s5)

# concatenation
# using string() constructor in C
# or using str1 * str2 in Julia. this is lame.. i dont like this symbol. it has no instinct inside...

greet = "hello"
whom  = "world"
println(string(greet, ", ", whom, ".\n"))

println(greet * ", " * whom)

# It's important to be aware of potentially dangerous situations such as concatenation of invalid UTF-8 strings.

a, b = "\xe2\x88", "\x80"
c = a * b
println(c)

collect.([a, b, c])

length.([a, b, c])

# interpolation
# using $var 
# or using $(expression)
# similar notation in C#

println("$greet, $whom")

# or
println("$(greet), $(whom)")
display("1 + 2 = $(1 + 2)")

# container
v = [1, 2, 3]
println("v: $(v)")

# triple quotated literals

s6 = """
hello world
!
"""

s6

