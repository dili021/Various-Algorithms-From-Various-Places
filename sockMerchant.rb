# Return the number of matching color pairs - represented with numbers

# Counter
pairs = 0

# Create a hash from the given array with 0 as default value
# Make each color a new key in the hash and increment the value by 1 for each occurence
# return the hash at the end
colors = ar.reduce(Hash.new(0)){|hash, color| hash[color] += 1; hash}

# Iterate through the values and increment number of pairs by... the number of pairs
colors.each_value{|socks| pairs += socks / 2 }

# return:
pairs
