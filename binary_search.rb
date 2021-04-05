def binary_search(list, target)
  first = 0
  last = list.length - 1

  while(first <= last)
    mid_point = ((first + last)/2).ceil
    if list[mid_point] == target
      return mid_point
    elsif list[mid_point]  < target
      first = mid_point + 1
    else
      last = mid_point - 1
    end

  end
  return nil
end

def verify(index)
  if !index.nil?
    print("Target found at index: ", index)
  else
    print("Target not found")
  end
end

numbers = [1,2,3,4,5,6,7,8,9,10]

result = binary_search(numbers, 12)
verify(result)

result = binary_search(numbers, 6)
verify(result)