# Return "yes" or "no" if all letters in a string have more than one occurrence
# and they can be rearanged to be next to the same letters. Read full description on [hackerrank](https://hackerrank.com)


def happyLadybugs(b)

# create a counter variable by reducing the given string into a new hash with each character
# as a new key, initialized with 0 and increment for each occurrence
  char_count = b.scan(/[A-Z]/).reduce(Hash.new(0)) { |counter, item| counter[item] += 1; counter }
  
# if there's any character with only 1 occurrence or there are no empty spaces ("_")
# and the characters are not already next to same characters return "no", else return "yes" 
  char_count.has_value?(1) || (!b.include?("_") && !already_happy?(b)) ? "NO" : "YES"
end

# helper method to checker whether the characters are already sorted i.e. next to same letters
def already_happy?(b)

  i = 1
  until i == b.size
    if b[i-1] != b[i] && b[i+1] != b[i]
      happy = false
      break
    else
      happy = true
    end
    i += 1
  end
  happy
end
