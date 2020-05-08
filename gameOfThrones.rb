# Check whether it's possible to rearrange the given string into a palindrome

# If there is more than one letter with an odd count the string is not a palindrome

# Create the hash variable to count each letter
char_count = s.chars.reduce(Hash.new(0)) { | memo, val | memo[val] += 1; memo }

# What I said on line 3
char_count.values.count { | i | i.odd? } > 1 ? "NO" : "YES"
