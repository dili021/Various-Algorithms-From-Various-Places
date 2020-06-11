
def rob(arr)
  return arr.max if arr.size < 4
  return 0 if arr.empty?
  max1 = robHelper(arr, 0, arr.size-2)
  max2 = robHelper(arr, 1, arr.size-1)
  [max1, max2].max  
end

def robHelper(arr, i, j)
  dp = []
  dp[i] = arr[i]
  dp[i+1] = [arr[i+1], dp[i]].max
  k = i+2
  until k > j
    dp[k] = [dp[k-1], dp[k-2]+arr[k]].max
    k += 1
  end
  dp[j]
end
