
def count_triplets(arr, r)
  count = 0
  arr_hash = Hash.new(0)
  arr_pairs = Hash.new(0)

  arr.reverse.each do |num|
    count += arr_pairs[(num * r)] if arr_pairs[(num * r)]
    arr_pairs[num] += arr_hash[num * r] if arr_hash[num * r]
    arr_hash[num] += 1
  end

  count

end

#TEST CASES
arr_1 = [1, 2, 2, 4]
r_1   = 2
puts count_triplets(arr_1, r_1) == 2

arr_2 = [1, 3, 9, 9, 27, 81]
r_2   = 3
puts count_triplets(arr_2, r_2) == 6

arr_3 = [1, 5, 5, 25, 125]
r_3   = 5
puts count_triplets(arr_3, r_3) == 4

