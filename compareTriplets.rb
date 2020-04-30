# Check full description at [hackerrank](https://www.hackerrank.com)

# Very simple so I won't give an explanation this time

def compareTriplets(a, b)
  i = 0
  score = [0, 0]
  
  while i < a.size
      
      if a[i] > b[i]
          score[0] += 1
      elsif
          a[i] < b[i]
          score[1] += 1
      end
      i += 1
  end
  score
end
