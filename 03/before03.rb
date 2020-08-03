
array = []

100.times do |i|
  array[i] = false
end

idx = 2
while true
  num = idx
  new_array = []
  old_array = array

  if !new_array == []
    old_array = new_array
  end

  100.times do |i|
    if num-1 == i
      new_array[num-1] = !old_array[num-1]
    else
      new_array[i] = old_array[i]
    end
    num += num
  end
  break if old_array == new_array
  idx += 1
end

p idx