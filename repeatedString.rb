# the method takes a string and the number of length of character repetitions to be considered
# it counts all the occurences of the letter "a" in the given length of a repeated string

# block by block

# count the a's in the original word
# multiply by given length over original string's size 
# n / s.size gives us the nubmer of whole strings repeated in the given length
# split into array so we can count in the leftover characters from the string that didn't fully fit in the length
# e.g.  str = "atr"; length = 11 => "atr|1|atr|2|atr|3|at|leftover|"
# add it all together
# voila!
(s.count("a")) * (n / s.size) + (s.split("").first(n % s.length).join.count("a"))
# one-liner! :)
