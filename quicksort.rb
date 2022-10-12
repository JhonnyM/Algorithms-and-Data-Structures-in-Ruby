def quickSort array
  if array.length < 2
    return array
  else
    pivot = array[0]
    less_than_pivot = array.select{|e| e < pivot }
    greater_than_pivot = array.select{|e| e > pivot }
    return quickSort(less_than_pivot) + [pivot] + quickSort(greater_than_pivot)
  end
end

quickSort [15,36,47,58,12,98,11,12]
