# sample string halved for better comparison and testing visibility
halved_string = "fdhlvosf pafhalll"

# sample string 
string = "fdhlvosfpafhalll"

# make variables for writing less && readability in the actual method
# split the string so we can use array methods
left = string[0..string.size/2-1].split("")
right = string[string.size/2..-1].split("")

# self-explanatory... <3 Ruby
return -1 if string.size.odd?

# if the checked letter exists on the right side delete it ONLY ON FIRST OCCURANCE (each iterates once for each (duh))
# a variable could have been made for right.index(letter) but then it would have to be a do end block. I just like one-liners more :)
left.each { |letter| right.delete_at(right.index(letter)) unless right.index(letter).nil? }

# return the size / length of the right - left string half
# this could have also been done at the end of the block
# but then the line would be even longer and it would return at every iteration
# it's also correct but not very DRY
right.size
