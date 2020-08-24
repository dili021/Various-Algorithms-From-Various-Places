# Custom hashMap challenge from CodeSignal

# You are given an array of query types which should:
# insert - key X is set to val Y
# addToValue - increase all values by X
# addToKey - increase all keys by X
# get - return the value at key X

# And an array of queries (values) which corresponds to the queryType array

# Given test case:

queryType = ["insert",
  "insert",
  "addToValue",
  "addToKey",
  "get"]

query = [[1,2],
[2,3],
[2],
[1],
[3]]

# Goal: implement all the querries and return the sum of all the get queries


# My solution:

def hashMap(queryType, query)
  obj = {}
  i = 0
  all_the_gets = []
  while i < queryType.size
    case queryType[i]
    when 'insert'
      obj[query[i][0]] = query[i][1]
      when 'addToKey'
          obj.transform_keys! { |key| key += query[i][0] }
      when 'addToValue'
        obj.transform_values! { |val| val += query[i][0] }
      when 'get'
        all_the_gets.push(obj[query[i][0]])
        obj[query[i]]
      end
      i += 1
  end
  all_the_gets.reduce(:+)
end
