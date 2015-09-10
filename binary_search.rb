#require "pry"
def binary_search (array_search, num_to_find, sorted = true)
unless sorted
 array_search.sort!
end
 min = 0
 max = array_search.length - 1
 mid = (min + max)/2
# binding.pry
 if  max > min
   return false
 elsif array_search[mid] == num_to_find
 return true
 elsif array_search[mid] > num_to_find
   array_search.select!.with_index { |x, i| i < mid  }
   binary_search(array_search, num_to_find)
 elsif array_search[mid] < num_to_find
     array_search.select!.with_index { |x, i| i > mid  }
     binary_search(array_search, num_to_find)
 end
end

p binary_search([3,5,2,4,8,0,10], 10, false)
