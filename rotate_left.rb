# rotates array to the left
def rotLeft(a, d)
  arr = (1..a).to_a
  d.times { arr.push(arr.shift) }
  arr
end

arr_left = [5,1,2,3,4]
p rotLeft(5, 4) == arr_left


# reverses the array
def reverse_array(arr)
  reversed_array = arr.dup
  mid = arr.length / 2 - 1
  (0..mid).each { |i| reversed_array[i], reversed_array[-i - 1] = reversed_array[-i - 1], reversed_array[i] }
  reversed_array
end

arr = (1..5).to_a
p reverse_array(arr) == arr.reverse
