def shuffle(array)
  i = 0
  while i < array.length do
    index_max = max_array_index(array, array.length - i)
    temp = array[index_max]
    array[index_max] = array[array.length - i - 1]
    array[array.length - i - 1] = temp
    i += 1
  end
  return array
end


def max_array_index(array, size)
  i = 1
  i_max = 0
  while i < size do
    if array[i] > array[i_max] then
      i_max = i
    end
    i += 1
  end
  return i_max
end



  #TODO: shuffle array manually