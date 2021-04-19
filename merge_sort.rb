def merge_sort(list) # an array
  #this algorithm will sort the list in an ascending order
  # returns a new sorted list

  #Divide:  Find the  mid point of the list and divide  into sublists
  #Conquer  Recursively sort the sublist  created in previous step
  #Combine Merge the sorted sublists created  in previous step

  # this is the stoping condition
  return list if list.length <= 1

  left_half,right_half = split(list)
  left = merge_sort(left_half)
  right = merge_sort(right_half)

  return merge(left, right)
end

def split(list)
  # Divide the unsorted list  into sublists
  # Returns two sublists - left and right
  mid_point = list.length/2
  left = list.slice(0...mid_point)
  right = list.slice(mid_point...list.length)

  return left, right
end

def merge(left_array, right_array)
  sorted_array = []
  # If either array is empty we don't need to compare them
  while !left_array.empty? && !right_array.empty? do
      # we are shifting out the compared/used values so we don't repeat
      if left_array[0] < right_array[0]
        sorted_array.push(left_array.shift)
      else   
        sorted_array.push(right_array.shift)
      end
  end 
  #concat appends elements of another array to an array
  return sorted_array.concat(left_array).concat(right_array)
end


alist = [22,34,56,12,45,90,45,78,31]
l = merge_sort(alist)
print l