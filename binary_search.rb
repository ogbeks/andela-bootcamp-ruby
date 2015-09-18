#require "pry"
def binary_search (array_search,num_to_find,counter=0, sorted =true)
unless sorted
 array_search.sort!
end
 min = 0
 max = array_search.length - 1
 mid = (min + max)/2
 result={}
 result[:count] ||=0
result[:index] ||=nil
# binding.pry
 if  max < min
   return false, result
 elsif array_search[mid] == num_to_find
   result[:index] = mid
    return true, result
 elsif array_search[min] == num_to_find
   result[:index]=min
#   binding.pry
 return true, result
elsif array_search[max] == num_to_find
  result[:index]=max
#   binding.pry
return true, result
 elsif array_search[mid] > num_to_find
  # binding.pry
   array_search.select!.with_index { |x, i| i < mid  }
   result[:count] +=1
  # binding.pry
   binary_search(array_search, num_to_find, counter)
 elsif array_search[mid] < num_to_find
  # binding.pry
     array_search.select!.with_index { |x, i| i > mid  }
     result[:count] +=1
  #   binding.pry
     binary_search(array_search, num_to_find,counter)

 end
end

p binary_search([3,5,2,4,8,0,10], 5,0, false)
