# Find the most expensive pair of keyboard + drive up to given budget (b)
# Return -1 if all items are above budget

# This can also be done with a nested each loop but was refactored to this version 
# so as to reduce time complexity from squared to linear.

def getMoneySpent(keyboards, drives, b)

# pair_sum stores the possible pair prices
    pair_sum= []
    
# The product method does the combining for us    
    combinations = keyboards.product(drives)
    
# Then we reduce(:+) each pair subarray and push it to the sum array if it's not above our budget
    combinations.each { |pair| pair_sum << pair.reduce(:+) if pair.reduce(:+) <= b }     

# Finally we return -1 if the sum array is empty, meaning all pairs are above budget.
# Otherwise we return the max
    pair_sum.empty? ? -1 : pair_sum.max
end
