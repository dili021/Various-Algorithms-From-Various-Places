# return the index of a letter that if removed would make the string a palindrome
# return -1 if it's already a palindrome or it's not possible

# self-explanatory
def palindrome?(str)
  str == str.reverse
end


def rogue_letter_index(str)

# starting points for the check
  front = 0
  back = str.length - 1

# increment the check points towards each other as long as the checked string is palindromic
  while front < back && str[front] == str[back]
    front += 1
    back -= 1
  end

# if the check passes and the points meet aka is_palindrome return -1
  if front >= back
    return -1
# if the check encounters a rogue letter 
# check whether it's the one in the first or second half 
  else
    return palindrome?(str[front...back]) ? back : front
  end
end
