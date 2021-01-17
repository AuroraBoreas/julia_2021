#= common operations
link: https://docs.julialang.org/en/v1/manual/strings/

Insert:

Delete:

Update:

Search:

Arithmetics
Relational
Logic
Assign
Bitwise
Access
Cast
Op for storage
Op for others

=#

s1 = "abracadabra" 
s2 = "xylophone"

# Relational
s1 < s2 # true

# search
findfirst(isequal('o'), "xylophone") # 4
findlast(isequal('o'), "xylophone") # 7
findnext(isequal('o'), "xylophone", 1) # 4
findnext(isequal('o'), "xylophone", 5) # 7
findprev(isequal('o'), "xylophone", 5) # 4

# using occusin() to check if substring inside of string
res = occursin("world", "Hello, world.")
res

# repeat
repeat("hello..", 10)

# join
join([1, 2, 3], ", ", " ")

#=

Some other useful functions include:

firstindex(str) gives the minimal (byte) index that can be used to index into str (always 1 for strings, not necessarily true for other containers).
lastindex(str) gives the maximal (byte) index that can be used to index into str.
length(str) the number of characters in str.
length(str, i, j) the number of valid character indices in str from i to j.
ncodeunits(str) number of code units in a string.
codeunit(str, i) gives the code unit value in the string str at index i.
thisind(str, i) given an arbitrary index into a string find the first index of the character into which the index points.
nextind(str, i, n=1) find the start of the nth character starting after index i.
prevind(str, i, n=1) find the start of the nth character starting before index i.

=#